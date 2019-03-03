package cn.org.hrbust.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "rent_house")
public class RentHouse {
    private int rentHouseId;
    private String belongsToBuilding;
    private String unit;
    private int floor;
    private String houseType;
    private String propertyType;
    private String position;
    private String decorateSituation;
    private String configurationFacilities;
    private String appendFacilities;
    private int housePropertyNum;
    private String structure;
    private double area;
    private String houseLandscape;
    private String towards;
    private String purpose;
    private String tel;
    private int rentMoney;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "renthouse_Id")
    public int getRentHouseId() {
        return this.rentHouseId;
    }

    public void setRentHouseId(int rentHouseId) {
        this.rentHouseId = rentHouseId;
    }

    @Column(name = "belongs_to_building")
    public String getBelongsToBuilding() {
        return this.belongsToBuilding;
    }

    public void setBelongsToBuilding(String belongsToBuilding) {
        this.belongsToBuilding = belongsToBuilding;
    }

    @Column(name = "unit")
    public String getUnit() {
        return this.unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    @Column(name = "floor")
    public int getFloor() {
        return this.floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    @Column(name = "house_type")
    public String getHouseType() {
        return this.houseType;
    }

    public void setHouseType(String houseType) {
        this.houseType = houseType;
    }

    @Column(name = "property_type")
    public String getPropertyType() {
        return this.propertyType;
    }

    public void setPropertyType(String propertyType) {
        this.propertyType = propertyType;
    }

    @Column(name = "position")
    public String getPosition() {
        return this.position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    @Column(name = "decorate_situation")
    public String getDecorateSituation() {
        return this.decorateSituation;
    }

    public void setDecorateSituation(String decorateSituation) {
        this.decorateSituation = decorateSituation;
    }

    @Column(name = "configuration_facilities")
    public String getConfigurationFacilities() {
        return this.configurationFacilities;
    }

    public void setConfigurationFacilities(String configurationFacilities) {
        this.configurationFacilities = configurationFacilities;
    }

    @Column(name = "append_facilities")
    public String getAppendFacilities() {
        return this.appendFacilities;
    }

    public void setAppendFacilities(String appendFacilities) {
        this.appendFacilities = appendFacilities;
    }

    @Column(name = "house_property_num")
    public int getHousePropertyNum() {
        return this.housePropertyNum;
    }

    public void setHousePropertyNum(int housePropertyNum) {
        this.housePropertyNum = housePropertyNum;
    }

    @Column(name = "structure")
    public String getStructure() {
        return this.structure;
    }

    public void setStructure(String structure) {
        this.structure = structure;
    }

    @Column(name = "area")
    public double getArea() {
        return this.area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    @Column(name = "house_landscape")
    public String getHouseLandscape() {
        return this.houseLandscape;
    }

    public void setHouseLandscape(String houseLandscape) {
        this.houseLandscape = houseLandscape;
    }

    @Column(name = "towards")
    public String getTowards() {
        return this.towards;
    }

    public void setTowards(String towards) {
        this.towards = towards;
    }

    @Column(name = "purpose")
    public String getPurpose() {
        return this.purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    @Column(name = "tel")
    public String getTel() {
        return this.tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    @Column(name = "rent_money")
    public int getRentMoney() {
        return this.rentMoney;
    }

    public void setRentMoney(int rentMoney) {
        this.rentMoney = rentMoney;
    }

    public String toString() {
        return "RentHouse [rentHouseId=" + this.rentHouseId
                + ", belongsToBuilding=" + this.belongsToBuilding + ", unit="
                + this.unit + ", floor=" + this.floor + ", houseType="
                + this.houseType + ", propertyType=" + this.propertyType
                + ", position=" + this.position + ", decorateSituation="
                + this.decorateSituation + ", configurationFacilities="
                + this.configurationFacilities + ", appendFacilities="
                + this.appendFacilities + ", housePropertyNum="
                + this.housePropertyNum + ", structure=" + this.structure
                + ", area=" + this.area + ", houseLandscape="
                + this.houseLandscape + ", towards=" + this.towards + ", purpose="
                + this.purpose + ", tel=" + this.tel + ", rentMoney="
                + this.rentMoney + "]";
    }
}