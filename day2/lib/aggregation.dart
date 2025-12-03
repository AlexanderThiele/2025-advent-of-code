class Aggregation {
  final int id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int revision;
  final Map<String, dynamic> ownerGroup;
  final Map<String, dynamic> area;
  final Map<String, dynamic> buyer;
  final Map<String, dynamic> creatorAccount;
  final Map<String, dynamic> sellingType;
  final Map<String, dynamic> project;
  final int sellingUnitNumber;
  final int woodlistId;
  final int woodlistNumber;
  final String woodlistName;
  final DateTime woodlistDate;
  final Map<String, dynamic> businessArea;
  final Map<String, dynamic> usageType;
  final Map<String, dynamic> baseArea;
  final Map<String, dynamic> sellerGroup;
  final List<Map<String, dynamic>> images;
  final int barkReductionType;
  final int number;
  final double latitude;
  final double longitude;
  final String storageLocation;
  final String note;
  final double avgLength;
  final double avgDiameter;
  final int protocolQuantity;
  final double protocolFmVolume;
  final double saleFmVolume;
  final int saleQuantity;
  final int saleStatus;
  final DateTime? saleDate;
  final double saleNetTotal;
  final double saleAvgUnitPrice;
  final int measurementType;
  final int contractorStatus;
  final int supplierBillingStatus;
  final int transportStatus; // Added as requested

  Aggregation({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.revision,
    required this.ownerGroup,
    required this.area,
    required this.buyer,
    required this.creatorAccount,
    required this.sellingType,
    required this.project,
    required this.sellingUnitNumber,
    required this.woodlistId,
    required this.woodlistNumber,
    required this.woodlistName,
    required this.woodlistDate,
    required this.businessArea,
    required this.usageType,
    required this.baseArea,
    required this.sellerGroup,
    required this.images,
    required this.barkReductionType,
    required this.number,
    required this.latitude,
    required this.longitude,
    required this.storageLocation,
    required this.note,
    required this.avgLength,
    required this.avgDiameter,
    required this.protocolQuantity,
    required this.protocolFmVolume,
    required this.saleFmVolume,
    required this.saleQuantity,
    required this.saleStatus,
    this.saleDate,
    required this.saleNetTotal,
    required this.saleAvgUnitPrice,
    required this.measurementType,
    required this.contractorStatus,
    required this.supplierBillingStatus,
    required this.transportStatus,
  });

  factory Aggregation.fromJson(Map<String, dynamic> json) {
    return Aggregation(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      revision: json['revision'] as int,
      ownerGroup: json['owner_group'] as Map<String, dynamic>,
      area: json['area'] as Map<String, dynamic>,
      buyer: json['buyer'] as Map<String, dynamic>,
      creatorAccount: json['creator_account'] as Map<String, dynamic>,
      sellingType: json['selling_type'] as Map<String, dynamic>,
      project: json['project'] as Map<String, dynamic>,
      sellingUnitNumber: json['sellingunit_number'] as int,
      woodlistId: json['woodlist_id'] as int,
      woodlistNumber: json['woodlist_number'] as int,
      woodlistName: json['woodlist_name'] as String,
      woodlistDate: DateTime.parse(json['woodlist_date'] as String),
      businessArea: json['business_area'] as Map<String, dynamic>,
      usageType: json['usage_type'] as Map<String, dynamic>,
      baseArea: json['base_area'] as Map<String, dynamic>,
      sellerGroup: json['seller_group'] as Map<String, dynamic>,
      images: (json['images'] as List).cast<Map<String, dynamic>>(),
      barkReductionType: json['bark_reduction_type'] as int,
      number: json['number'] as int,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      storageLocation: json['storage_location'] as String,
      note: json['note'] as String,
      avgLength: (json['avg_length'] as num).toDouble(),
      avgDiameter: (json['avg_diameter'] as num).toDouble(),
      protocolQuantity: json['protocol_quantity'] as int,
      protocolFmVolume: (json['protocol_fm_volume'] as num).toDouble(),
      saleFmVolume: (json['sale_fm_volume'] as num).toDouble(),
      saleQuantity: json['sale_quantity'] as int,
      saleStatus: json['sale_status'] as int,
      saleDate: json['sale_date'] != null
          ? DateTime.parse(json['sale_date'] as String)
          : null,
      saleNetTotal: (json['sale_net_total'] as num).toDouble(),
      saleAvgUnitPrice: (json['sale_avg_unit_price'] as num).toDouble(),
      measurementType: json['measurement_type'] as int,
      contractorStatus: json['contractor_status'] as int,
      supplierBillingStatus: json['supplier_billing_status'] as int,
      transportStatus: json['transport_status'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'revision': revision,
      'owner_group': ownerGroup,
      'area': area,
      'buyer': buyer,
      'creator_account': creatorAccount,
      'selling_type': sellingType,
      'project': project,
      'sellingunit_number': sellingUnitNumber,
      'woodlist_id': woodlistId,
      'woodlist_number': woodlistNumber,
      'woodlist_name': woodlistName,
      'woodlist_date': woodlistDate.toIso8601String(),
      'business_area': businessArea,
      'usage_type': usageType,
      'base_area': baseArea,
      'seller_group': sellerGroup,
      'images': images,
      'bark_reduction_type': barkReductionType,
      'number': number,
      'latitude': latitude,
      'longitude': longitude,
      'storage_location': storageLocation,
      'note': note,
      'avg_length': avgLength,
      'avg_diameter': avgDiameter,
      'protocol_quantity': protocolQuantity,
      'protocol_fm_volume': protocolFmVolume,
      'sale_fm_volume': saleFmVolume,
      'sale_quantity': saleQuantity,
      'sale_status': saleStatus,
      'sale_date': saleDate?.toIso8601String(),
      'sale_net_total': saleNetTotal,
      'sale_avg_unit_price': saleAvgUnitPrice,
      'measurement_type': measurementType,
      'contractor_status': contractorStatus,
      'supplier_billing_status': supplierBillingStatus,
      'transport_status': transportStatus,
    };
  }
}
