class Feed {
  String upLoadedBy;
  String subTitle;
  String profileImage;
  String postImage;
  String caption;
  String description;
  bool like;
  bool save;
  int commentCount;

  Feed(
      {this.upLoadedBy,
      this.subTitle,
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
      subTitle: 'jung',
      profileImage:
          'https://www.bing.com/images/search?view=detailV2&ccid=KldcuTdl&id=E2E09DD39939CFD23DAD40640427C910A671EDC4&thid=OIP.KldcuTdl8u0LlXp1vgre9wHaEK&mediaurl=https%3a%2f%2fi.ytimg.com%2fvi%2fgnOz6UPb_fg%2fmaxresdefault.jpg&exph=720&expw=1280&q=Zen+Music+Peaceful&simid=608054785311443185&ck=B7E91700A8ED7B3A457EAED38FF73CC9&selectedIndex=1&FORM=IRPRST&ajaxhist=0',
      postImage:
          'https://www.bing.com/images/search?view=detailV2&ccid=KldcuTdl&id=E2E09DD39939CFD23DAD40640427C910A671EDC4&thid=OIP.KldcuTdl8u0LlXp1vgre9wHaEK&mediaurl=https%3a%2f%2fi.ytimg.com%2fvi%2fgnOz6UPb_fg%2fmaxresdefault.jpg&exph=720&expw=1280&q=Zen+Music+Peaceful&simid=608054785311443185&ck=B7E91700A8ED7B3A457EAED38FF73CC9&selectedIndex=1&FORM=IRPRST&ajaxhist=0',
      like: false,
      save: false,
      commentCount: 10,
      caption: 'This is Ayush Jung profile');

  Feed feed2 = new Feed(
      upLoadedBy: 'Swostika',
      subTitle: 'subedi',
      profileImage:
          'https://www.bing.com/images/search?view=detailV2&ccid=WJSrAUFt&id=EEDD791FF1EF10AED61897A85C7AB8E1190E18E8&thid=OIP.WJSrAUFtKqI1y8v3na6i8gHaLI&mediaurl=https%3a%2f%2fs-media-cache-ak0.pinimg.com%2f736x%2fb9%2fc6%2f57%2fb9c657252192ccaf8d295021e325c3b9.jpg&exph=600&expw=399&q=hunter+boy&simid=608000183481797356&ck=2FCFF4A243D11D608D3BCA18BF9322DC&selectedIndex=10&FORM=IRPRST&ajaxhist=0',
      postImage:
          'https://www.bing.com/images/search?view=detailV2&ccid=WJSrAUFt&id=EEDD791FF1EF10AED61897A85C7AB8E1190E18E8&thid=OIP.WJSrAUFtKqI1y8v3na6i8gHaLI&mediaurl=https%3a%2f%2fs-media-cache-ak0.pinimg.com%2f736x%2fb9%2fc6%2f57%2fb9c657252192ccaf8d295021e325c3b9.jpg&exph=600&expw=399&q=hunter+boy&simid=608000183481797356&ck=2FCFF4A243D11D608D3BCA18BF9322DC&selectedIndex=10&FORM=IRPRST&ajaxhist=0',
      like: false,
      save: false,
      commentCount: 10,
      caption: 'This is Swostika subedi  profile');

  allfeed.add(feed1);
  allfeed.add(feed2);
  return allfeed;
}
