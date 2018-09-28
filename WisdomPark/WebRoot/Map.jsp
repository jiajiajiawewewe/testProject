<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <style>
        body, html {
            width: 100%;
            height: 100%;
            margin: 0;
            font-family: "微软雅黑";
        }

        #allmap {
            height: 500px;
            width: 100%;
        }

        #r-result {
            width: 100%;
            font-size: 14px;
        }

        tr {
            height: 40px;
        }
    </style>
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=B3f7707c25da5b29a6ff69618788a296"></script>

    <script>
        $(document).ready(function () {
            // 初始化百度地图
            initBaiduMap(116.322987, 39.983424);

            $(".selectLan").click(function () {
                doOptions();
                initBaiduMap($("#addhouseLongitude").val(), $("#addhouseLatitude").val());
            });
        });
        /**
         *
         * 初始化百度地图
         */
        function initBaiduMap(x, y) {
            // 百度地图API功能
            map = new BMap.Map("allmap");
            var point = new BMap.Point(x, y);
            map.centerAndZoom(point, 15);
            //map.centerAndZoom("北京", 13);
            map.enableScrollWheelZoom(true);
            // 设置地图显示的城市 此项是必须设置的
            map.setCurrentCity("北京");
            // 添加地图类型控件
            map.addControl(new BMap.MapTypeControl());
            // 左上角，添加比例尺
            var top_left_control = new BMap.ScaleControl({
                anchor: BMAP_ANCHOR_TOP_LEFT
            });
            // 左上角，添加默认缩放平移控件
            var top_left_navigation = new BMap.NavigationControl();
            // 右上角，仅包含平移和缩放按钮
            var top_right_navigation = new BMap.NavigationControl({
                anchor: BMAP_ANCHOR_TOP_RIGHT,
                type: BMAP_NAVIGATION_CONTROL_SMALL
            });
            /*
             * 缩放控件type有四种类型: BMAP_NAVIGATION_CONTROL_SMALL：仅包含平移和缩放按钮；
             * BMAP_NAVIGATION_CONTROL_PAN:仅包含平移按钮； BMAP_NAVIGATION_CONTROL_ZOOM：仅包含缩放按钮
             */
            map.addControl(top_left_control);
            map.addControl(top_left_navigation);

            map.clearOverlays();
            // 创建标注
            var marker = new BMap.Marker(point);
            // 将标注添加到地图中
            map.addOverlay(marker);
            map.panTo(point);

            // 鼠标点击获取坐标,并设置标注
            //map.addEventListener("click", function (e) {
            //    //通过坐标获取详细地址
            //    $("#addhouseLongitude").val(e.point.lng);
            //    $("#addhouseLatitude").val(e.point.lat);
            //    map.clearOverlays();
            //    var new_point = new BMap.Point(
            //        document.getElementById("addhouseLongitude").value,
            //        document.getElementById("addhouseLatitude").value);
            //    // 创建标注
            //    var marker = new BMap.Marker(new_point);
            //    // 将标注添加到地图中
            //    map.addOverlay(marker);
            //    map.panTo(new_point);
            //});
        }

        //通过地址推出坐标
        var advancedOptions = "";
        var address = "";
        var cityname = "";
        var SAMPLE_ADVANCED_POST = "http://api.map.baidu.com/geocoder/v2/?ak=B3f7707c25da5b29a6ff69618788a296&callback=renderOption&output=json";
        //通过坐标反推地址的
        var addressOptions = "";
        var lat = "";
        var lng = "";
        var SAMPLE_ADDRESS_POST = "http://api.map.baidu.com/geocoder/v2/?ak=B3f7707c25da5b29a6ff69618788a296&callback=renderReverse&output=json&pois=1";

        function doOptions() {
            var script = document.createElement('script');
            script.type = 'text/javascript';
            showOptionsURL();
            script.src = advancedOptions;
            document.body.appendChild(script);
        };
        function doAddress() {
            var script = document.createElement('script');
            script.type = 'text/javascript';
            showAddressURL();
            script.src = addressOptions;
            document.body.appendChild(script);
        };

        function showOptionsURL() {
            advancedOptions = SAMPLE_ADVANCED_POST;
            address = document.getElementById("location").value;
            cityname = document.getElementById("cityname").value;
            advancedOptions += "&address=" + encodeURIComponent(address);
            advancedOptions += "&city=" + encodeURIComponent(cityname);
            var safe = advancedOptions;
            GetCode(safe);
        };

        function showAddressURL() {
            addressOptions = SAMPLE_ADDRESS_POST;
            lat = document.getElementById("addhouseLatitude").value;
            lng = document.getElementById("addhouseLongitude").value;
            addressOptions += "&location=" + lat + "," + lng;
            var safe = addressOptions;
            GetAddress(safe);
        };

        function GetCode(url) {
            $.ajax({
                type: "get",
                url: url,
                dataType: "JSONP",
                success: function (data) {
                    renderOption(data);
                },
                error: function (data) {
                    renderOption(data);
                }

            });
        }

        function GetAddress(url) {
            $.ajax({
                type: "get",
                url: url,
                dataType: "JSONP",
                success: function (data) {
                    renderReverse(data);
                },
                error: function (data) {
                    renderReverse(data);
                }

            });
        }

        function renderOption(response) {
            var html = '';
            if (response.status) {
                var text = "无正确的返回结果:\n";
                document.getElementById('optionsNarrative').innerHTML = text;
                return;
            } else {
                var location = response.result.location;
                $("#addhouseLongitude").val(location.lng);
                $("#addhouseLatitude").val(location.lat);
                document.getElementById('optionsNarrative').innerHTML = '<p>坐标：纬度: ' + location.lat + "  经度: " + location.lng + '<br/>';
                return;
            }
        }
        function renderReverse(response) {
            var html = '';
            if (response.status) {
                var text = "无正确的返回结果:\n";
                document.getElementById('optionsNarrative').innerHTML = text;
                return;
            } else {
                var location = response.result;

                html += '<p>详细地址: ' + location.formatted_address + '<br/>';
                html += '<p>城市: ' + location.addressComponent.country + location.addressComponent.province + '<br/>';
                html += '<p>市区: ' + location.addressComponent.city + location.addressComponent.district + '<br/>';
                html += '<p>地址: ' + location.addressComponent.street + location.addressComponent.street_number + '<br/>';
                document.getElementById('optionsNarrative').innerHTML = html;
                return;
            }
        }
    </script>
</head>
<body>
    <table style="width: 60%;" border="1">
        <tr>
            <td></td>
            <td>
                <input type="text" id="cityname" style="width: 200px;">
                <br />
                <input type="text" id="location" style="width: 200px;">
                <br />
                <input type="button" class="selectLan" value="查询坐标" />
                <br />
                <div id="optionsNarrative"></div>
            </td>
        </tr>
        <tr>
            <td>位置及周边</td>
            <td>
                <div id="r-result">
                    经度: <input id="addhouseLongitude" type="text" style="width: 180px; height: 30px; margin-right: 10px;" /><br />
                    纬度: <input id="addhouseLatitude" type="text" style="width: 180px; height: 30px; margin-right: 10px;" />
                </div>
                <div id="allmap"></div>
            </td>
        </tr>

    </table>
</body>
</html>