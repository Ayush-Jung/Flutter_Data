class Feed {
  String upLoadedBy;
  String profileImage;
  String postImage;
  String caption;
  String description;
  bool like;
  bool save;
  String timeAgo;
  bool sponsored;
  int commentCount;
  String postDate;

  Feed(
      {this.upLoadedBy,
      this.sponsored,
      this.timeAgo,
      this.postDate,
      this.profileImage,
      this.postImage,
      this.caption,
      this.description,
      this.commentCount,
      this.like,
      this.save});
}

List<Feed> getFeeds() // this is functions that returns Feed as a datatype.
{
  List<Feed> allfeed = [];
  Feed feed1 = new Feed(
      upLoadedBy: 'Ayush',
      profileImage:
          'https://scontent.fktm10-1.fna.fbcdn.net/v/t1.0-9/117436570_101417711683280_1138836161271393737_n.jpg?_nc_cat=106&_nc_sid=85a577&_nc_ohc=wWAP4Es26yEAX_Mt4tw&_nc_ht=scontent.fktm10-1.fna&oh=e2d1df771169e572d5a1c3e74cf32b54&oe=5F772E75',
      postImage:
          'https://www.bing.com/images/search?view=detailV2&ccid=N8pQ8FYf&id=B97ACA76DDA58E2314FECB4D0B138B23E1D7F1A0&thid=OIP.N8pQ8FYfzUCNQ93mA0M-WwHaEK&mediaurl=https%3a%2f%2fi.ytimg.com%2fvi%2fbE62Y1YXvx4%2fmaxresdefault.jpg&exph=720&expw=1280&q=background-image&simid=608014842216056518&ck=76A4855B8D8C40CFCF298F6A6B18AEF3&selectedIndex=0&FORM=IRPRST&ajaxhist=0',
      like: false,
      save: false,
      sponsored: true,
      postDate: "sept 10, 2020",
      description: "This is a epic moments in my life.",
      commentCount: 10,
      timeAgo: '3 minutes ago',
      caption: 'This is Ayush Jung profile');

  Feed feed2 = new Feed(
      upLoadedBy: 'Swostika',
      profileImage:
          'https://www.bing.com/images/search?view=detailV2&ccid=WJSrAUFt&id=EEDD791FF1EF10AED61897A85C7AB8E1190E18E8&thid=OIP.WJSrAUFtKqI1y8v3na6i8gHaLI&mediaurl=https%3a%2f%2fs-media-cache-ak0.pinimg.com%2f736x%2fb9%2fc6%2f57%2fb9c657252192ccaf8d295021e325c3b9.jpg&exph=600&expw=399&q=hunter+boy&simid=608000183481797356&ck=2FCFF4A243D11D608D3BCA18BF9322DC&selectedIndex=10&FORM=IRPRST&ajaxhist=0',
      postImage:
          'https://www.bing.com/images/search?view=detailV2&ccid=WJSrAUFt&id=EEDD791FF1EF10AED61897A85C7AB8E1190E18E8&thid=OIP.WJSrAUFtKqI1y8v3na6i8gHaLI&mediaurl=https%3a%2f%2fs-media-cache-ak0.pinimg.com%2f736x%2fb9%2fc6%2f57%2fb9c657252192ccaf8d295021e325c3b9.jpg&exph=600&expw=399&q=hunter+boy&simid=608000183481797356&ck=2FCFF4A243D11D608D3BCA18BF9322DC&selectedIndex=10&FORM=IRPRST&ajaxhist=0',
      like: false,
      save: false,
      sponsored: true,
      postDate: "sept 10, 2020",
      description: "This is a epic moments in my life.",
      commentCount: 10,
      caption: 'This is Swostika subedi  profile');

  Feed feed3 = new Feed(
      upLoadedBy: 'Swostika',
      profileImage:
          'https://www.bing.com/images/search?view=detailV2&ccid=WJSrAUFt&id=EEDD791FF1EF10AED61897A85C7AB8E1190E18E8&thid=OIP.WJSrAUFtKqI1y8v3na6i8gHaLI&mediaurl=https%3a%2f%2fs-media-cache-ak0.pinimg.com%2f736x%2fb9%2fc6%2f57%2fb9c657252192ccaf8d295021e325c3b9.jpg&exph=600&expw=399&q=hunter+boy&simid=608000183481797356&ck=2FCFF4A243D11D608D3BCA18BF9322DC&selectedIndex=10&FORM=IRPRST&ajaxhist=0',
      postImage:
          'https://www.bing.com/images/search?view=detailV2&ccid=WJSrAUFt&id=EEDD791FF1EF10AED61897A85C7AB8E1190E18E8&thid=OIP.WJSrAUFtKqI1y8v3na6i8gHaLI&mediaurl=https%3a%2f%2fs-media-cache-ak0.pinimg.com%2f736x%2fb9%2fc6%2f57%2fb9c657252192ccaf8d295021e325c3b9.jpg&exph=600&expw=399&q=hunter+boy&simid=608000183481797356&ck=2FCFF4A243D11D608D3BCA18BF9322DC&selectedIndex=10&FORM=IRPRST&ajaxhist=0',
      like: false,
      save: false,
      sponsored: true,
      postDate: "sept 10, 2020",
      description: "This is a epic moments in my life.",
      commentCount: 10,
      caption: 'This is Swostika subedi  profile');

  Feed feed4 = new Feed(
      upLoadedBy: 'Swostika',
      profileImage:
          'https://www.bing.com/images/search?view=detailV2&ccid=WJSrAUFt&id=EEDD791FF1EF10AED61897A85C7AB8E1190E18E8&thid=OIP.WJSrAUFtKqI1y8v3na6i8gHaLI&mediaurl=https%3a%2f%2fs-media-cache-ak0.pinimg.com%2f736x%2fb9%2fc6%2f57%2fb9c657252192ccaf8d295021e325c3b9.jpg&exph=600&expw=399&q=hunter+boy&simid=608000183481797356&ck=2FCFF4A243D11D608D3BCA18BF9322DC&selectedIndex=10&FORM=IRPRST&ajaxhist=0',
      postImage:
          'https://www.bing.com/images/search?view=detailV2&ccid=WJSrAUFt&id=EEDD791FF1EF10AED61897A85C7AB8E1190E18E8&thid=OIP.WJSrAUFtKqI1y8v3na6i8gHaLI&mediaurl=https%3a%2f%2fs-media-cache-ak0.pinimg.com%2f736x%2fb9%2fc6%2f57%2fb9c657252192ccaf8d295021e325c3b9.jpg&exph=600&expw=399&q=hunter+boy&simid=608000183481797356&ck=2FCFF4A243D11D608D3BCA18BF9322DC&selectedIndex=10&FORM=IRPRST&ajaxhist=0',
      like: false,
      save: false,
      sponsored: true,
      postDate: "sept 10, 2020",
      description: "This is a epic moments in my life.",
      commentCount: 10,
      caption: 'This is Swostika subedi  profile');

  allfeed.add(feed1);
  allfeed.add(feed2);
  allfeed.add(feed3);
  allfeed.add(feed4);
  return allfeed;
}
