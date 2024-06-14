class NewsItem {
  final int id;
  final String title;
  final String imgUrl;
  final String category;
  final String author;
  final String time;

  NewsItem({
    required this.id,
    required this.title,
    required this.imgUrl,
    required this.category,
    required this.author,
    this.time = '8 minutes ago',
  });
}

List<NewsItem> news = [
  NewsItem(
    id: 1,
    title: 'This is a freaking title',
    imgUrl:
        'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    category: 'Sports',
    author: 'CNN',
  ),
  NewsItem(
    id: 2,
    title: 'This is a very good title here',
    imgUrl:
        'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    category: 'Social',
    author: 'BBC',
  ),
  NewsItem(
    id: 3,
    title: 'This is an amazing title here',
    imgUrl:
        'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    category: 'Medical',
    author: 'National',
  ),
  NewsItem(
    id: 4,
    title: 'This is a excellent title here',
    imgUrl:
        'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    category: 'Political',
    author: 'CNN',
  ),
];
