package cn.org.hrbust.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "house")
public class House {
    private int houseId;
    private String belongsToBuilding;
    private String unit;
    private int floor;
    private int housePropertyNum;
    private String structure;
    private String propertyType;
    private String houseType;
    private double area;
    private String houseLandscape;
    private String towards;
    private String position;
    private String decorateSituation;
    private String appendFacilities;
    private int housingPrice;
    private String housingPriceChangingInformation;

    @Id
    @Column(name = "house_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getHouseId() {
        return this.houseId;
    }

    public void setHouseId(int houseId) {
        this.houseId = houseId;
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

    @Column(name = "property_type")
    public String getPropertyType() {
        return this.propertyType;
    }

    public void setPropertyType(String propertyType) {
        this.propertyType = propertyType;
    }

    @Column(name = "house_type")
    public String getHouseType() {
        return this.houseType;
    }

    public void setHouseType(String houseType) {
        this.houseType = houseType;
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

    @Column(name = "append_facilities")
    public String getAppendFacilities() {
        return this.appendFacilities;
    }

    public void setAppendFacilities(String appendFacilities) {
        this.appendFacilities = appendFacilities;
    }

    @Column(name = "housing_price")
    public int getHousingPrice() {
        return this.housingPrice;
    }

    public void setHousingPrice(int housingPrice) {
        this.housingPrice = housingPrice;
    }

    @Column(name = "housing_price_changing_information")
    public String getHousingPriceChangingInformation() {
        return this.housingPriceChangingInformation;
    }

    public void setHousingPriceChangingInformation(
            String housingPriceChangingInformation) {
        this.housingPriceChangingInformation = housingPriceChangingInformation;
    }

    public String toString() {
        return "House [houseId=" + this.houseId + ", belongsToBuilding="
                + this.belongsToBuilding + ", unit=" + this.unit + ", floor="
                + this.floor + ", housePropertyNum=" + this.housePropertyNum
                + ", structure=" + this.structure + ", propertyType="
                + this.propertyType + ", houseType=" + this.houseType
                + ", area=" + this.area + ", houseLandscape="
                + this.houseLandscape + ", towards=" + this.towards
                + ", position=" + this.position + ", decorateSituation="
                + this.decorateSituation + ", appendFacilities="
                + this.appendFacilities + ", housingPrice=" + this.housingPrice
                + ", housingPriceChangingInformation="
                + this.housingPriceChangingInformation + "]";
    }
}