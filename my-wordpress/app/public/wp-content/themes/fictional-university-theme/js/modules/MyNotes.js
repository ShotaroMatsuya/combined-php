import $ from "jquery";

class MyNotes {
  constructor() {
    this.events();
  }
  events() {
    $(".delete-note").on("click", this.deleteNote);
    $(".edit-note").on("click", this.editNote.bind(this)); //thisをクラスインスタンスにバインドする(クリックしたhtmlエレメントにバインドされないように)
    $(".update-note").on("click", this.updateNote.bind(this));
  }
  //Methods will go here
  editNote(e) {
    var thisNote = $(e.target).parents("li");
    if (thisNote.data("state") == "editable") {
      //make read only
      this.makeNoteReadOnly(thisNote);
    } else {
      //make editable
      this.makeNoteEditable(thisNote);
    }
  }
  makeNoteEditable(thisNote) {
    thisNote
      .find(".edit-note")
      .html('<i class="fa fa-times" aria-hidden="true"></i>Cancel');
    thisNote
      .find(".note-title-field, .note-body-field")
      .removeAttr("readonly") //inputフォーム内の入力を可能にする
      .addClass("note-active-field"); //borderを表示するスタイル
    thisNote.find(".update-note").addClass("update-note--visible");
    thisNote.data("state", "editable");
  }
  makeNoteReadOnly(thisNote) {
    thisNote
      .find(".edit-note")
      .html('<i class="fa fa-pencil" aria-hidden="true"></i>Edit');
    thisNote
      .find(".note-title-field, .note-body-field")
      .attr("readonly", "readonly") //inputフォーム内の入力を不可能にする
      .removeClass("note-active-field"); //borderを非表示
    thisNote.find(".update-note").removeClass("update-note--visible");
    thisNote.data("state", "cancel");
  }

  deleteNote(e) {
    var thisNote = $(e.target).parents("li");
    $.ajax({
      beforeSend: (xhr) => {
        xhr.setRequestHeader("X-WP-NONCE", universityData.nonce); //wordpressが送られたhttpリクエストのトークン(nonce)をcheckするために必要
      },
      url:
        universityData.root_url + "/wp-json/wp/v2/note/" + thisNote.data("id"), //endpoint
      type: "DELETE", //method
      success: (response) => {
        thisNote.slideUp();
        console.log("Congrats");
        console.log(response);
      }, //成功時の関数をセット
      error: (response) => {
        console.log("Sorry");
        console.log(response);
      }, //失敗時の関数をセット
    });
  }
  updateNote(e) {
    var thisNote = $(e.target).parents("li");
    var ourUpdatedPost = {
      title: thisNote.find(".note-title-field").val(),
      content: thisNote.find(".note-body-field").val(),
    };
    $.ajax({
      beforeSend: (xhr) => {
        xhr.setRequestHeader("X-WP-NONCE", universityData.nonce); //wordpressが送られたhttpリクエストのトークン(nonce)をcheckするために必要
      },
      url:
        universityData.root_url + "/wp-json/wp/v2/note/" + thisNote.data("id"), //endpoint
      type: "POST", //method
      data: ourUpdatedPost,
      success: (response) => {
        this.makeNoteReadOnly(thisNote);
        console.log("Congrats");
        console.log(response);
      }, //成功時の関数をセット
      error: (response) => {
        console.log("Sorry");
        console.log(response);
      }, //失敗時の関数をセット
    });
  }
}

export default MyNotes;
