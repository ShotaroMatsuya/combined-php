import $ from 'jquery';

class Like {
  constructor() {
    this.events();
  }

  events() {
    $('.like-box').on('click', this.ourClickDispatcher.bind(this));
  }

  //methods
  ourClickDispatcher(e) {
    var currentLikeBox = $(e.target).closest('.like-box'); // e.targetでクリックした部分のhtmlエレメントを取得できる
    //closestで最も近い親要素を取得

    if (currentLikeBox.attr('data-exists') == 'yes') {
      this.deleteLike(currentLikeBox);
    } else {
      this.createLike(currentLikeBox);
    }
  }
  createLike(currentLikeBox) {
    $.ajax({
      beforeSend: xhr => {
        xhr.setRequestHeader('X-WP-NONCE', universityData.nonce); //wordPressが送られたhttpリクエストのトークン(nonce)をcheckするために必要
      },
      url: universityData.root_url + '/wp-json/university/v1/manageLike', //register_rest_routeと一致させる
      type: 'POST',
      data: {
        professorId: currentLikeBox.data('professor'),
      },
      success: response => {
        currentLikeBox.attr('data-exists', 'yes');
        var likeCount = parseInt(currentLikeBox.find('.like-count').html(), 10); //stringデータをintegerに
        likeCount++;
        currentLikeBox.find('.like-count').html(likeCount);
        currentLikeBox.attr('data-like', response); //responseにはlike-post-idが返ってくる

        console.log(response);
      },
      error: response => {
        console.log(response);
      },
    });
  }
  deleteLike(currentLikeBox) {
    $.ajax({
      beforeSend: xhr => {
        xhr.setRequestHeader('X-WP-NONCE', universityData.nonce); //wordPressが送られたhttpリクエストのトークン(nonce)をcheckするために必要
      },
      url: universityData.root_url + '/wp-json/university/v1/manageLike', //register_rest_routeと一致させる
      type: 'DELETE',
      data: { like: currentLikeBox.attr('data-like') },
      success: response => {
        currentLikeBox.attr('data-exists', 'no');
        var likeCount = parseInt(currentLikeBox.find('.like-count').html(), 10); //stringデータをintegerに
        likeCount--;
        currentLikeBox.find('.like-count').html(likeCount);
        currentLikeBox.attr('data-like', ''); //responseにはlike-post-idが返ってくる

        console.log(response);
      },
      error: response => {
        console.log(response);
      },
    });
  }
}

export default Like;
