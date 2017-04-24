<?php
namespace app\data\controller;
use \base\Base;
use think\Db;

class Shop extends Base
{
    /**
     * ��ȡ�б�
     */
    public function getTakeoutList(){
        $page = input('page')?input('page'):1; //ҳ��
        $pagesize = input('pagesize')?input('pagesize'):10; //ÿҳ����
        $lon = input('lon')?input('lon'):'114.240668'; //����
        $lat = input('lat')?input('lat'):'22.703796'; //γ��
        $res = Db::query('SELECT f_shopicon shopicon, f_shopname shopname, f_sales sales, f_deliveryfee deliveryfee, f_minprice minprice, f_preconsume preconsume, f_modtime modtime, distance distance FROM(SELECT *,ROUND(6378.138 *2*ASIN(SQRT(POW(SIN((:lat1*PI()/180-f_maplat*PI()/180)/2),2)+COS(:lat2*PI()/180)*COS(f_maplat*PI()/180)*POW(SIN((:lon*PI()/180-f_maplon*PI()/180)/2),2)))*1000) AS distance FROM t_dineshop where f_isaway=:isaway ORDER BY distance ASC) a LIMIT :page,:pagesize',['lon'=>floatval($lon), 'lat1'=>floatval($lat), 'lat2'=>floatval($lat), 'isaway'=>1, 'page'=>intval(($page-1)*$pagesize), 'pagesize'=>intval($pagesize)]);
        if($res && count($res) > 0){
            $this->res['code'] = 1;
            $this->res['list'] = $res;
        }
        return json($this->res);
    }
    /**
     * ��ȡʳ���б�
     */
    public function getCanteenList(){
        $page = input('page')?input('page'):1; //ҳ��
        $pagesize = input('pagesize')?input('pagesize'):10; //ÿҳ����
        $lon = input('lon')?input('lon'):'114.240668'; //����
        $lat = input('lat')?input('lat'):'22.703796'; //γ��
        $res = Db::query('SELECT f_shopicon shopicon, f_shopname shopname, f_sales sales, f_deliveryfee deliveryfee, f_minprice minprice, f_preconsume preconsume, f_modtime modtime, distance distance FROM(SELECT *,ROUND(6378.138 *2*ASIN(SQRT(POW(SIN((:lat1*PI()/180-f_maplat*PI()/180)/2),2)+COS(:lat2*PI()/180)*COS(f_maplat*PI()/180)*POW(SIN((:lon*PI()/180-f_maplon*PI()/180)/2),2)))*1000) AS distance FROM t_dineshop where f_isbooking=:isbooking ORDER BY distance ASC) a LIMIT :page,:pagesize',['lon'=>floatval($lon), 'lat1'=>floatval($lat), 'lat2'=>floatval($lat), 'isbooking'=>1, 'page'=>intval(($page-1)*$pagesize), 'pagesize'=>intval($pagesize)]);
        if($res && count($res) > 0){
            $this->res['code'] = 1;
            $this->res['list'] = $res;
        }
        return json($this->res);
    }
}

#114.240668,22.703796
#γ��lat 22.703796 ����lon 114.240668
//SELECT *,ROUND(6378.138 *2*ASIN(SQRT(POW(SIN((22.703796*PI()/180-f_maplat*PI()/180)/2),2)+COS(22.703796*PI()/180)*COS(f_maplat*PI()/180)*POW(SIN((114.240668*PI()/180-f_maplon*PI()/180)/2),2)))*1000) AS distance FROM t_dineshop ORDER BY distance ASC