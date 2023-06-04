import $ from 'jquery';

class MyNotes {
  constructor() {
    this.events();
  }
  events() {
    // $(".delete-note").on("click", this.deleteNote); //このままだと最初に読み込まれたDOMにしかイベントリスナーが登録されないので以下のように変える
    $('#my-notes').on('click', '.delete-note', this.deleteNote); //これで新規作成されたばかりのpostも消去できるようになる

    // $(".edit-note").on("click", this.editNote.bind(this)); //thisをクラスインスタンスにバインドする(クリックしたhtmlエレメントにバインドされないように)
    $('#my-notes').on('click', '.edit-note', this.editNote.bind(this));
    // $(".update-note").on("click", this.updateNote.bind(this));
    $('#my-notes').on('click', '.update-note', this.updateNote.bind(this));
    $('.submit-note').on('click', this.createNote.bind(this));
  }
  //Methods will go here
  editNote(e) {
    var thisNote = $(e.target).parents('li');
    if (thisNote.data('state') == 'editable') {
      //make read only
      this.makeNoteReadOnly(thisNote);
    } else {
      //make editable
      this.makeNoteEditable(thisNote);
    }
  }
  makeNoteEditable(thisNote) {
    thisNote
      .find('.edit-note')
      .html('<i class="fa fa-times" aria-hidden="true"></i>Cancel');
    thisNote
      .find('.note-title-field, .note-body-field')
      .removeAttr('readonly') //inputフォーム内の入力を可能にする
      .addClass('note-active-field'); //borderを表示するスタイル
    thisNote.find('.update-note').addClass('update-note--visible');
    thisNote.data('state', 'editable');
  }
  makeNoteReadOnly(thisNote) {
    thisNote
      .find('.edit-note')
      .html('<i class="fa fa-pencil" aria-hidden="true"></i>Edit');
    thisNote
      .find('.note-title-field, .note-body-field')
      .attr('readonly', 'readonly') //inputフォーム内の入力を不可能にする
      .removeClass('note-active-field'); //borderを非表示
    thisNote.find('.update-note').removeClass('update-note--visible');
    thisNote.data('state', 'cancel');
  }

  deleteNote(e) {
    var thisNote = $(e.target).parents('li');
    $.ajax({
      beforeSend: xhr => {
        xhr.setRequestHeader('X-WP-NONCE', universityData.nonce); //wordpressが送られたhttpリクエストのトークン(nonce)をcheckするために必要
      },
      url:
        universityData.root_url + '/wp-json/wp/v2/note/' + thisNote.data('id'), //endpoint
      type: 'DELETE', //method
      success: response => {
        thisNote.slideUp();
        console.log('Congrats');
        console.log(response);
        if (response.userNoteCount < 5) {
          $('.note-limit-message').removeClass('active');
        }
      }, //成功時の関数をセット
      error: response => {
        console.log('Sorry');
        console.log(response);
      }, //失敗時の関数をセット
    });
  }

  updateNote(e) {
    var thisNote = $(e.target).parents('li');
    var ourUpdatedPost = {
      title: thisNote.find('.note-title-field').val(),
      content: thisNote.find('.note-body-field').val(),
    };
    $.ajax({
      beforeSend: xhr => {
        xhr.setRequestHeader('X-WP-NONCE', universityData.nonce); //wordpressが送られたhttpリクエストのトークン(nonce)をcheckするために必要
      },
      url:
        universityData.root_url + '/wp-json/wp/v2/note/' + thisNote.data('id'), //endpoint
      type: 'POST', //method
      data: ourUpdatedPost,
      success: response => {
        this.makeNoteReadOnly(thisNote);
        console.log('Congrats');
        console.log(response);
      }, //成功時の関数をセット
      error: response => {
        console.log('Sorry');
        console.log(response);
      }, //失敗時の関数をセット
    });
  }
  createNote(e) {
    var ourNewPost = {
      title: $('.new-note-title').val(),
      content: $('.new-note-body').val(),
      // status: "publish", //defaultだとprivateになっている
      status: 'publish',
    };
    $.ajax({
      beforeSend: xhr => {
        xhr.setRequestHeader('X-WP-NONCE', universityData.nonce); //wordpressが送られたhttpリクエストのトークン(nonce)をcheckするために必要
      },
      url: universityData.root_url + '/wp-json/wp/v2/note/', //endpoint
      type: 'POST', //method
      data: ourNewPost,
      success: response => {
        $('.new-note-title, .new-note-body').val('');
        $(`
        <li data-id="${response.id}">
            <input readonly class="note-title-field" value="${response.title.raw}"> <!-- htmlタグに出力する場合にはesc_attrを用いる -->
            <span class="edit-note"><i class="fa fa-pencil" aria-hidden="true"></i>Edit</span>
            <span class="delete-note"><i class="fa fa-trash-o" aria-hidden="true"></i>Delete</span>

            <textarea readonly class="note-body-field">${response.content.raw}</textarea>
            <span class="update-note btn btn--blue btn--small"><i class="fa fa-arrow-right" aria-hidden="true"></i>Save</span>

        </li>           
        
        `)
          .prependTo('#my-notes')
          .hide()
          .slideDown();
        console.log('Congrats');
        console.log(response);
      }, //成功時の関数をセット
      error: response => {
        if (response.responseText == 'You have reached your note limit . ') {
          $('.note-limit-message').addClass('active');
        }
        console.log('Sorry');
        console.log(response);
      }, //失敗時の関数をセット
    });
  }
}

export default MyNotes;
