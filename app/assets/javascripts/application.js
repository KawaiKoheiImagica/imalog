// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

    function initMap() {

      // マップの初期化
      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 17,
        center: {lat: 35.6235288, lng: 139.7269575}
      });
      
      var markerOpts = {
        position: new google.maps.LatLng(35.6235288, 139.7269575),
        map: map,
        title: "marker test"
      };
      // 直前で作成したMarkerOptionsを利用してMarkerを作成
      var marker = new google.maps.Marker(markerOpts);

      // クリックイベントを追加
      map.addListener('click', function(e) {
        getClickLatLng(e.latLng, map);
      });
      
    }

    function getClickLatLng(lat_lng, map) {

      var infoWindowOpts = {
        position: new google.maps.LatLng(lat_lng.lat(), lat_lng.lng()),
        content: "test"
      };
      // 直前で作成したInfoWindowOptionsを利用してInfoWindowを作成
      var newshop = new google.maps.InfoWindow(infoWindowOpts);

      // 地図上にInfoWindowを表示
      newshop.open(map);

    }
    


