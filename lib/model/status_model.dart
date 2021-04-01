class StatusModel {
  List<String> text;
  List<String> img;
  List<String> video;

  StatusModel({this.text, this.img, this.video});
}

List<StatusModel> dummyStatusData = [
  new StatusModel(text: [
    'Hi this is Flutter developer',
    'I made this clone',
    'For more detail contact +03028090100'
  ], img: [
    'https://images.unsplash.com/photo-1606297158300-5c4f6d171be9?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8cVBZc0R6dkpPWWN8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1614292022786-d7843e97321f?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDN8cVBZc0R6dkpPWWN8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  ], video: [
    'https://player.vimeo.com/external/356200184.sd.mp4?s=f528556cafba1d369984dc341104e7eef8bb71bb&profile_id=139&oauth2_token_id=57447761'
  ]),
  new StatusModel(text: [
    'This is just a sample'
  ], img: [
    'https://images.unsplash.com/photo-1606297158300-5c4f6d171be9?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8cVBZc0R6dkpPWWN8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1614292022786-d7843e97321f?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDN8cVBZc0R6dkpPWWN8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  ], video: [
    'https://player.vimeo.com/external/356200184.sd.mp4?s=f528556cafba1d369984dc341104e7eef8bb71bb&profile_id=139&oauth2_token_id=57447761'
  ]),
  new StatusModel(text: [
    'Spread love everywhere you go. Let no one ever come to you without leaving happier.-Mother Teresa',
    'When you reach the end of your rope, tie a knot in it and hang on." -Franklin D. Roosevelt'
  ], img: [
    'https://images.unsplash.com/photo-1552452380-4137214f33b6?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8NnNNVmpUTFNrZVF8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1552452380-4137214f33b6?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8NnNNVmpUTFNrZVF8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  ], video: []),
  new StatusModel(text: [
    'Always remember that you are absolutely unique. Just like everyone else." -Margaret Mead',
  ], img: [
    'https://images.unsplash.com/photo-1614565738408-c8f79fd169aa?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDl8NnNNVmpUTFNrZVF8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1614394893144-04f459b008ee?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDEzfDZzTVZqVExTa2VRfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  ], video: [
    'https://player.vimeo.com/external/403662486.sd.mp4?s=69904b97740e93b837188de1d3aa288980787936&profile_id=139&oauth2_token_id=57447761'
  ]),
  new StatusModel(text: [
    'Donot judge each day by the harvest you reap but by the seeds that you plant.',
    'The future belongs to those who believe in the beauty of their dreams." -Eleanor Roosevelt',
    'Tell me and I forget. Teach me and I remember. Involve me and I learn." -Benjamin Franklin'
  ], img: [
    'https://images.unsplash.com/photo-1614589176816-891fbeae6bc6?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDE4fDZzTVZqVExTa2VRfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1614375246902-2786a4cab664?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDE5fDZzTVZqVExTa2VRfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1516616370751-86d6bd8b0651?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDIyfDZzTVZqVExTa2VRfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  ], video: []),
  new StatusModel(text: [
    'The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.'
  ], img: [
    'https://images.unsplash.com/photo-1614450771346-0935fb976a9e?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDMxfDZzTVZqVExTa2VRfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  ], video: [
    'https://player.vimeo.com/external/460746266.sd.mp4?s=37f6493b2310721f4776cee0a96531f83276944b&profile_id=139&oauth2_token_id=57447761'
  ]),
  new StatusModel(text: [
    'It is during our darkest moments that we must focus to see the light.',
    'Whoever is happy will make others happy too.'
  ], img: [
    'https://images.unsplash.com/photo-1614368558214-f8922bd49987?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDM2fDZzTVZqVExTa2VRfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1598960629374-0ec7c63a57b0?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDM5fDZzTVZqVExTa2VRfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  ], video: [
    'https://player.vimeo.com/external/484255850.sd.mp4?s=5ef0a804493dbe4f64dcf662e4179c2ceeee7852&profile_id=165&oauth2_token_id=57447761'
  ]),
  new StatusModel(text: [
    'Hi this is Flutter developer',
    'I made this clone',
    'For more detail contact +03028090100'
  ], img: [
    'https://images.unsplash.com/photo-1606297158300-5c4f6d171be9?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8cVBZc0R6dkpPWWN8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1614292022786-d7843e97321f?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDN8cVBZc0R6dkpPWWN8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  ], video: [
    'https://player.vimeo.com/external/356200184.sd.mp4?s=f528556cafba1d369984dc341104e7eef8bb71bb&profile_id=139&oauth2_token_id=57447761'
  ]),
  new StatusModel(text: [
    'Hi this is Flutter developer',
    'I made this clone',
    'For more detail contact +03028090100'
  ], img: [
    'https://images.unsplash.com/photo-1606297158300-5c4f6d171be9?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8cVBZc0R6dkpPWWN8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1614292022786-d7843e97321f?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDN8cVBZc0R6dkpPWWN8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  ], video: [
    'https://player.vimeo.com/external/356200184.sd.mp4?s=f528556cafba1d369984dc341104e7eef8bb71bb&profile_id=139&oauth2_token_id=57447761'
  ]),
  new StatusModel(text: [
    'Spread love everywhere you go. Let no one ever come to you without leaving happier.-Mother Teresa',
    'When you reach the end of your rope, tie a knot in it and hang on." -Franklin D. Roosevelt'
  ], img: [
    'https://images.unsplash.com/photo-1552452380-4137214f33b6?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8NnNNVmpUTFNrZVF8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1552452380-4137214f33b6?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8NnNNVmpUTFNrZVF8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
  ], video: []),
];
