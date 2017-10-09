<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_SESSION['userLoginSession'])) {
        $gc=$_POST['txtGhiChu'];
        $sql = "insert into don_hang (id_tai_khoan, ghi_chu, tong_tien, trang_thai,ngay) values"
                . "('$id','$gc','$total',0,now())";

        $db->exec($sql);
        $madh = $db->lastInsertId();

        $sql_2 = "insert into don_hang_ct(id_don_hang, id_san_pham, so_luong, don_gia) values";

        foreach ($_SESSION['cart'] as $r) {
            $masp = $r['ma'];
            $dg = $r['dg'];
            $sl = $r['sl'];
            $sql_2 .="($madh,$masp,$sl,$dg),";
        }
        $sql_2 = substr($sql_2, 0, strlen($sql_2) - 1);
        $db->exec($sql_2);

        header('location:index.php?page=del_cart');
    } else {
        header('location:index.php?page=login');
    } 
}
?>    
<div class="center_content">

    <div class="center_title_bar">Giỏ hàng của bạn</div>

    <?php
    if (isset($_REQUEST['id'])) {
        $id_san_pham = $_REQUEST['id'];
        //1. San pham da co trong gio hang => tang so luong len 1
        if (isset($_SESSION['cart'][$id_san_pham])) {
            $_SESSION['cart'][$id_san_pham]['sl']+=1;
        }
        //2. San pham chua co => them vao 
        else {
            $sql = "select id_san_pham, ten_san_pham, anh_san_pham, gia from san_pham where id_san_pham = $id_san_pham";
            $rows = $db->query($sql);

            $r = $rows->fetch();

            $_SESSION['cart'][$id_san_pham] = array('ma' => $r[0], 'ten' => $r[1], 'ha' => $r[2], 'dg' => $r[3], 'sl' => 1);
        }
    }
    ?>


    <?php
    if (isset($_SESSION['cart']) && count($_SESSION['cart']) > 0) {
        echo '<table width="100%" border="1" style="margin-bottom:30px;">
            <tr>
                <th>Số thứ tự</th>
                <th>Sản phẩm</th>
                <th>Hình ảnh</th>
                <th>Đơn giá</th>
                <th>Số lượng</th>
                <th>Thành tiền</th>
                <th>Công cụ</th>
            </tr>';
        $i = 0;
        foreach ($_SESSION['cart'] as $r) {
            $i++;
            echo "<tr>"
            . "<td>$i</td>"
            . "<td>" . $r['ten'] . "</td>"
            . "<td><img src='img/" . $r['ha'] . "' width='60px'/></td>"
            . "<td>" . number_format($r['dg']) . "</td>"
            . "<td>" . $r['sl'] . "</td>"
            . "<td>" . number_format($r['dg'] * $r['sl']) . "</td>"
            . "<td><a href='index.php?page=del_cart&id=" . $r['ma'] . "'>Xóa</a></td>"
            . "</tr>";
        }
        echo '</table>
        <a href="index.php?page=del_cart">Hủy giỏ hàng</a>';
        echo '<form method="post" action="">
            <div style="margin-top:30px">Ghi chú <input type="text" name="txtGhiChu" size="50"/></div>
            <div style="text-align:center;margin-top:30px"><input type="submit" value="Gửi đơn hàng"/></div>
        </form>';
    } else {
        echo '<div class="center_content"><h2>Không có sản phẩm nào trong giỏ hàng của bạn !</h2></div>';
    }
    ?>
    
</div>