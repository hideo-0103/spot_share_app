var geocoder;
function initMap() {
    geocoder = new google.maps.Geocoder();
  geocoder.geocode({
      'address': '東京都千代田区神田小川町3-28-9' // TAM 東京
   }, function(results, status) { // 結果
        if (status === google.maps.GeocoderStatus.OK) { // ステータスがOKの場合
          console.group('Success');
         console.log(results);
           console.log(status);
        } else { // 失敗した場合
          console.group('Error');
           console.log(results);
           console.log(status);
        }
   });
}