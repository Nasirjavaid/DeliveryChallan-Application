class SmDeliveryChallan {
  List<Items> items;
  bool hasMore;
  int limit;
  int offset;
  int count;
  List<Links> links;

  SmDeliveryChallan(
      {this.items,
      this.hasMore,
      this.limit,
      this.offset,
      this.count,
      this.links});

  SmDeliveryChallan.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
    hasMore = json['hasMore'];
    limit = json['limit'];
    offset = json['offset'];
    count = json['count'];
    if (json['links'] != null) {
      links = new List<Links>();
      json['links'].forEach((v) {
        links.add(new Links.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    data['hasMore'] = this.hasMore;
    data['limit'] = this.limit;
    data['offset'] = this.offset;
    data['count'] = this.count;
    if (this.links != null) {
      data['links'] = this.links.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  int dcId;
  int dcNo;
  int customerId;
  int shipToId;
  String shipToAddress;
  String shipToPhoneNo;
  String dcDate;
  String remarks;
  String companyId;
  String branchId;
  int createdBy;
  String creationDate;
  int lastUpdatedBy;
  String lastUpdateDate;
  int approvedBy;
  String approvalDate;
  String status;
  int glVoucherCgsId;
  int storeId;
  String vehicleType;
  String vehicleNo;
  String builtyNo;
  String driverName;
  String transComp;
  String container;
  int doId;
  String seal2;
  String seal1;
  List<Links> links;

  Items(
      {this.dcId,
      this.dcNo,
      this.customerId,
      this.shipToId,
      this.shipToAddress,
      this.shipToPhoneNo,
      this.dcDate,
      this.remarks,
      this.companyId,
      this.branchId,
      this.createdBy,
      this.creationDate,
      this.lastUpdatedBy,
      this.lastUpdateDate,
      this.approvedBy,
      this.approvalDate,
      this.status,
      this.glVoucherCgsId,
      this.storeId,
      this.vehicleType,
      this.vehicleNo,
      this.builtyNo,
      this.driverName,
      this.transComp,
      this.container,
      this.doId,
      this.seal2,
      this.seal1,
      this.links});

  Items.fromJson(Map<String, dynamic> json) {
    dcId = json['dc_id'];
    dcNo = json['dc_no'];
    customerId = json['customer_id'];
    shipToId = json['ship_to_id'];
    shipToAddress = json['ship_to_address'];
    shipToPhoneNo = json['ship_to_phone_no'];
    dcDate = json['dc_date'];
    remarks = json['remarks'];
    companyId = json['company_id'];
    branchId = json['branch_id'];
    createdBy = json['created_by'];
    creationDate = json['creation_date'];
    lastUpdatedBy = json['last_updated_by'];
    lastUpdateDate = json['last_update_date'];
    approvedBy = json['approved_by'];
    approvalDate = json['approval_date'];
    status = json['status'];
    glVoucherCgsId = json['gl_voucher_cgs_id'];
    storeId = json['store_id'];
    vehicleType = json['vehicle_type'];
    vehicleNo = json['vehicle_no'];
    builtyNo = json['builty_no'];
    driverName = json['driver_name'];
    transComp = json['trans_comp'];
    container = json['container'];
    doId = json['do_id'];
    seal2 = json['seal2'];
    seal1 = json['seal1'];
    if (json['links'] != null) {
      links = new List<Links>();
      json['links'].forEach((v) {
        links.add(new Links.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dc_id'] = this.dcId;
    data['dc_no'] = this.dcNo;
    data['customer_id'] = this.customerId;
    data['ship_to_id'] = this.shipToId;
    data['ship_to_address'] = this.shipToAddress;
    data['ship_to_phone_no'] = this.shipToPhoneNo;
    data['dc_date'] = this.dcDate;
    data['remarks'] = this.remarks;
    data['company_id'] = this.companyId;
    data['branch_id'] = this.branchId;
    data['created_by'] = this.createdBy;
    data['creation_date'] = this.creationDate;
    data['last_updated_by'] = this.lastUpdatedBy;
    data['last_update_date'] = this.lastUpdateDate;
    data['approved_by'] = this.approvedBy;
    data['approval_date'] = this.approvalDate;
    data['status'] = this.status;
    data['gl_voucher_cgs_id'] = this.glVoucherCgsId;
    data['store_id'] = this.storeId;
    data['vehicle_type'] = this.vehicleType;
    data['vehicle_no'] = this.vehicleNo;
    data['builty_no'] = this.builtyNo;
    data['driver_name'] = this.driverName;
    data['trans_comp'] = this.transComp;
    data['container'] = this.container;
    data['do_id'] = this.doId;
    data['seal2'] = this.seal2;
    data['seal1'] = this.seal1;
    if (this.links != null) {
      data['links'] = this.links.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Links {
  String rel;
  String href;

  Links({this.rel, this.href});

  Links.fromJson(Map<String, dynamic> json) {
    rel = json['rel'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rel'] = this.rel;
    data['href'] = this.href;
    return data;
  }
}
