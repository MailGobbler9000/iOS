//  This file was automatically generated and should not be edited.

import AWSAppSync

public final class AddLogMutation: GraphQLMutation {
  public static let operationString =
    "mutation AddLog($id: ID!, $time: String!) {\n  addLog(id: $id, time: $time) {\n    __typename\n    id\n    time\n  }\n}"

  public var id: GraphQLID
  public var time: String

  public init(id: GraphQLID, time: String) {
    self.id = id
    self.time = time
  }

  public var variables: GraphQLMap? {
    return ["id": id, "time": time]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addLog", arguments: ["id": GraphQLVariable("id"), "time": GraphQLVariable("time")], type: .nonNull(.object(AddLog.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(addLog: AddLog) {
      self.init(snapshot: ["__typename": "Mutation", "addLog": addLog.snapshot])
    }

    public var addLog: AddLog {
      get {
        return AddLog(snapshot: snapshot["addLog"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "addLog")
      }
    }

    public struct AddLog: GraphQLSelectionSet {
      public static let possibleTypes = ["MailLog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("time", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, time: String? = nil) {
        self.init(snapshot: ["__typename": "MailLog", "id": id, "time": time])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var time: String? {
        get {
          return snapshot["time"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }
    }
  }
}

public final class AddBarcodeMutation: GraphQLMutation {
  public static let operationString =
    "mutation AddBarcode($barcode: ID!, $value: String!) {\n  addBarcode(barcode: $barcode, value: $value) {\n    __typename\n    barcode\n    value\n  }\n}"

  public var barcode: GraphQLID
  public var value: String

  public init(barcode: GraphQLID, value: String) {
    self.barcode = barcode
    self.value = value
  }

  public var variables: GraphQLMap? {
    return ["barcode": barcode, "value": value]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addBarcode", arguments: ["barcode": GraphQLVariable("barcode"), "value": GraphQLVariable("value")], type: .nonNull(.object(AddBarcode.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(addBarcode: AddBarcode) {
      self.init(snapshot: ["__typename": "Mutation", "addBarcode": addBarcode.snapshot])
    }

    public var addBarcode: AddBarcode {
      get {
        return AddBarcode(snapshot: snapshot["addBarcode"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "addBarcode")
      }
    }

    public struct AddBarcode: GraphQLSelectionSet {
      public static let possibleTypes = ["BarcodeLog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("barcode", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("value", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(barcode: GraphQLID, value: String? = nil) {
        self.init(snapshot: ["__typename": "BarcodeLog", "barcode": barcode, "value": value])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var barcode: GraphQLID {
        get {
          return snapshot["barcode"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "barcode")
        }
      }

      public var value: String? {
        get {
          return snapshot["value"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "value")
        }
      }
    }
  }
}

public final class AddPackageMutation: GraphQLMutation {
  public static let operationString =
    "mutation AddPackage($barcode: ID!, $time: String!) {\n  addPackage(barcode: $barcode, time: $time) {\n    __typename\n    barcode\n    time\n  }\n}"

  public var barcode: GraphQLID
  public var time: String

  public init(barcode: GraphQLID, time: String) {
    self.barcode = barcode
    self.time = time
  }

  public var variables: GraphQLMap? {
    return ["barcode": barcode, "time": time]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addPackage", arguments: ["barcode": GraphQLVariable("barcode"), "time": GraphQLVariable("time")], type: .nonNull(.object(AddPackage.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(addPackage: AddPackage) {
      self.init(snapshot: ["__typename": "Mutation", "addPackage": addPackage.snapshot])
    }

    public var addPackage: AddPackage {
      get {
        return AddPackage(snapshot: snapshot["addPackage"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "addPackage")
      }
    }

    public struct AddPackage: GraphQLSelectionSet {
      public static let possibleTypes = ["PackageLog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("barcode", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("time", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(barcode: GraphQLID, time: String? = nil) {
        self.init(snapshot: ["__typename": "PackageLog", "barcode": barcode, "time": time])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var barcode: GraphQLID {
        get {
          return snapshot["barcode"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "barcode")
        }
      }

      public var time: String? {
        get {
          return snapshot["time"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }
    }
  }
}

public final class UnlockRequestMutation: GraphQLMutation {
  public static let operationString =
    "mutation UnlockRequest($id: ID!, $value: String!) {\n  unlockRequest(id: $id, value: $value) {\n    __typename\n    id\n    time\n  }\n}"

  public var id: GraphQLID
  public var value: String

  public init(id: GraphQLID, value: String) {
    self.id = id
    self.value = value
  }

  public var variables: GraphQLMap? {
    return ["id": id, "value": value]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("unlockRequest", arguments: ["id": GraphQLVariable("id"), "value": GraphQLVariable("value")], type: .nonNull(.object(UnlockRequest.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(unlockRequest: UnlockRequest) {
      self.init(snapshot: ["__typename": "Mutation", "unlockRequest": unlockRequest.snapshot])
    }

    public var unlockRequest: UnlockRequest {
      get {
        return UnlockRequest(snapshot: snapshot["unlockRequest"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "unlockRequest")
      }
    }

    public struct UnlockRequest: GraphQLSelectionSet {
      public static let possibleTypes = ["MailLog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("time", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, time: String? = nil) {
        self.init(snapshot: ["__typename": "MailLog", "id": id, "time": time])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var time: String? {
        get {
          return snapshot["time"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }
    }
  }
}

public final class DeleteLogMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteLog($id: ID!, $expectedVersion: String) {\n  deleteLog(id: $id, expectedVersion: $expectedVersion) {\n    __typename\n    id\n    time\n  }\n}"

  public var id: GraphQLID
  public var expectedVersion: String?

  public init(id: GraphQLID, expectedVersion: String? = nil) {
    self.id = id
    self.expectedVersion = expectedVersion
  }

  public var variables: GraphQLMap? {
    return ["id": id, "expectedVersion": expectedVersion]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteLog", arguments: ["id": GraphQLVariable("id"), "expectedVersion": GraphQLVariable("expectedVersion")], type: .nonNull(.object(DeleteLog.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteLog: DeleteLog) {
      self.init(snapshot: ["__typename": "Mutation", "deleteLog": deleteLog.snapshot])
    }

    public var deleteLog: DeleteLog {
      get {
        return DeleteLog(snapshot: snapshot["deleteLog"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "deleteLog")
      }
    }

    public struct DeleteLog: GraphQLSelectionSet {
      public static let possibleTypes = ["MailLog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("time", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, time: String? = nil) {
        self.init(snapshot: ["__typename": "MailLog", "id": id, "time": time])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var time: String? {
        get {
          return snapshot["time"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }
    }
  }
}

public final class DeleteBarcodeMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteBarcode($barcode: ID!, $expectedVersion: String) {\n  deleteBarcode(barcode: $barcode, expectedVersion: $expectedVersion) {\n    __typename\n    barcode\n    value\n  }\n}"

  public var barcode: GraphQLID
  public var expectedVersion: String?

  public init(barcode: GraphQLID, expectedVersion: String? = nil) {
    self.barcode = barcode
    self.expectedVersion = expectedVersion
  }

  public var variables: GraphQLMap? {
    return ["barcode": barcode, "expectedVersion": expectedVersion]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteBarcode", arguments: ["barcode": GraphQLVariable("barcode"), "expectedVersion": GraphQLVariable("expectedVersion")], type: .nonNull(.object(DeleteBarcode.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteBarcode: DeleteBarcode) {
      self.init(snapshot: ["__typename": "Mutation", "deleteBarcode": deleteBarcode.snapshot])
    }

    public var deleteBarcode: DeleteBarcode {
      get {
        return DeleteBarcode(snapshot: snapshot["deleteBarcode"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "deleteBarcode")
      }
    }

    public struct DeleteBarcode: GraphQLSelectionSet {
      public static let possibleTypes = ["BarcodeLog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("barcode", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("value", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(barcode: GraphQLID, value: String? = nil) {
        self.init(snapshot: ["__typename": "BarcodeLog", "barcode": barcode, "value": value])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var barcode: GraphQLID {
        get {
          return snapshot["barcode"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "barcode")
        }
      }

      public var value: String? {
        get {
          return snapshot["value"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "value")
        }
      }
    }
  }
}

public final class DeletePackageMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeletePackage($barcode: ID!, $expectedVersion: String) {\n  deletePackage(barcode: $barcode, expectedVersion: $expectedVersion) {\n    __typename\n    barcode\n    time\n  }\n}"

  public var barcode: GraphQLID
  public var expectedVersion: String?

  public init(barcode: GraphQLID, expectedVersion: String? = nil) {
    self.barcode = barcode
    self.expectedVersion = expectedVersion
  }

  public var variables: GraphQLMap? {
    return ["barcode": barcode, "expectedVersion": expectedVersion]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deletePackage", arguments: ["barcode": GraphQLVariable("barcode"), "expectedVersion": GraphQLVariable("expectedVersion")], type: .nonNull(.object(DeletePackage.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deletePackage: DeletePackage) {
      self.init(snapshot: ["__typename": "Mutation", "deletePackage": deletePackage.snapshot])
    }

    public var deletePackage: DeletePackage {
      get {
        return DeletePackage(snapshot: snapshot["deletePackage"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "deletePackage")
      }
    }

    public struct DeletePackage: GraphQLSelectionSet {
      public static let possibleTypes = ["PackageLog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("barcode", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("time", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(barcode: GraphQLID, time: String? = nil) {
        self.init(snapshot: ["__typename": "PackageLog", "barcode": barcode, "time": time])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var barcode: GraphQLID {
        get {
          return snapshot["barcode"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "barcode")
        }
      }

      public var time: String? {
        get {
          return snapshot["time"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }
    }
  }
}

public final class GetAllLogsQuery: GraphQLQuery {
  public static let operationString =
    "query GetAllLogs($count: Int, $nextToken: String) {\n  getAllLogs(count: $count, nextToken: $nextToken) {\n    __typename\n    Logs {\n      __typename\n      id\n      time\n    }\n    nextToken\n  }\n}"

  public var count: Int?
  public var nextToken: String?

  public init(count: Int? = nil, nextToken: String? = nil) {
    self.count = count
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["count": count, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getAllLogs", arguments: ["count": GraphQLVariable("count"), "nextToken": GraphQLVariable("nextToken")], type: .nonNull(.object(GetAllLog.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getAllLogs: GetAllLog) {
      self.init(snapshot: ["__typename": "Query", "getAllLogs": getAllLogs.snapshot])
    }

    public var getAllLogs: GetAllLog {
      get {
        return GetAllLog(snapshot: snapshot["getAllLogs"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "getAllLogs")
      }
    }

    public struct GetAllLog: GraphQLSelectionSet {
      public static let possibleTypes = ["MailLogger"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("Logs", type: .nonNull(.list(.nonNull(.object(Log.selections))))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(logs: [Log], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "MailLogger", "Logs": logs.map { $0.snapshot }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var logs: [Log] {
        get {
          return (snapshot["Logs"] as! [Snapshot]).map { Log(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "Logs")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Log: GraphQLSelectionSet {
        public static let possibleTypes = ["MailLog"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("time", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, time: String? = nil) {
          self.init(snapshot: ["__typename": "MailLog", "id": id, "time": time])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var time: String? {
          get {
            return snapshot["time"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "time")
          }
        }
      }
    }
  }
}

public final class GetLogQuery: GraphQLQuery {
  public static let operationString =
    "query GetLog($id: ID) {\n  getLog(id: $id) {\n    __typename\n    id\n    time\n  }\n}"

  public var id: GraphQLID?

  public init(id: GraphQLID? = nil) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getLog", arguments: ["id": GraphQLVariable("id")], type: .nonNull(.object(GetLog.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getLog: GetLog) {
      self.init(snapshot: ["__typename": "Query", "getLog": getLog.snapshot])
    }

    public var getLog: GetLog {
      get {
        return GetLog(snapshot: snapshot["getLog"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "getLog")
      }
    }

    public struct GetLog: GraphQLSelectionSet {
      public static let possibleTypes = ["MailLog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("time", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, time: String? = nil) {
        self.init(snapshot: ["__typename": "MailLog", "id": id, "time": time])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var time: String? {
        get {
          return snapshot["time"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }
    }
  }
}

public final class GetAllBarcodesQuery: GraphQLQuery {
  public static let operationString =
    "query GetAllBarcodes($count: Int, $nextToken: String) {\n  getAllBarcodes(count: $count, nextToken: $nextToken) {\n    __typename\n    Barcodes {\n      __typename\n      barcode\n      value\n    }\n    nextToken\n  }\n}"

  public var count: Int?
  public var nextToken: String?

  public init(count: Int? = nil, nextToken: String? = nil) {
    self.count = count
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["count": count, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getAllBarcodes", arguments: ["count": GraphQLVariable("count"), "nextToken": GraphQLVariable("nextToken")], type: .nonNull(.object(GetAllBarcode.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getAllBarcodes: GetAllBarcode) {
      self.init(snapshot: ["__typename": "Query", "getAllBarcodes": getAllBarcodes.snapshot])
    }

    public var getAllBarcodes: GetAllBarcode {
      get {
        return GetAllBarcode(snapshot: snapshot["getAllBarcodes"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "getAllBarcodes")
      }
    }

    public struct GetAllBarcode: GraphQLSelectionSet {
      public static let possibleTypes = ["BarcodeLogger"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("Barcodes", type: .nonNull(.list(.nonNull(.object(Barcode.selections))))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(barcodes: [Barcode], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "BarcodeLogger", "Barcodes": barcodes.map { $0.snapshot }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var barcodes: [Barcode] {
        get {
          return (snapshot["Barcodes"] as! [Snapshot]).map { Barcode(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "Barcodes")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Barcode: GraphQLSelectionSet {
        public static let possibleTypes = ["BarcodeLog"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("barcode", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("value", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(barcode: GraphQLID, value: String? = nil) {
          self.init(snapshot: ["__typename": "BarcodeLog", "barcode": barcode, "value": value])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var barcode: GraphQLID {
          get {
            return snapshot["barcode"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "barcode")
          }
        }

        public var value: String? {
          get {
            return snapshot["value"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }
      }
    }
  }
}

public final class GetBarcodeQuery: GraphQLQuery {
  public static let operationString =
    "query GetBarcode($barcode: ID) {\n  getBarcode(barcode: $barcode) {\n    __typename\n    barcode\n    value\n  }\n}"

  public var barcode: GraphQLID?

  public init(barcode: GraphQLID? = nil) {
    self.barcode = barcode
  }

  public var variables: GraphQLMap? {
    return ["barcode": barcode]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getBarcode", arguments: ["barcode": GraphQLVariable("barcode")], type: .nonNull(.object(GetBarcode.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getBarcode: GetBarcode) {
      self.init(snapshot: ["__typename": "Query", "getBarcode": getBarcode.snapshot])
    }

    public var getBarcode: GetBarcode {
      get {
        return GetBarcode(snapshot: snapshot["getBarcode"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "getBarcode")
      }
    }

    public struct GetBarcode: GraphQLSelectionSet {
      public static let possibleTypes = ["BarcodeLog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("barcode", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("value", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(barcode: GraphQLID, value: String? = nil) {
        self.init(snapshot: ["__typename": "BarcodeLog", "barcode": barcode, "value": value])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var barcode: GraphQLID {
        get {
          return snapshot["barcode"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "barcode")
        }
      }

      public var value: String? {
        get {
          return snapshot["value"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "value")
        }
      }
    }
  }
}

public final class GetAllPackagesQuery: GraphQLQuery {
  public static let operationString =
    "query GetAllPackages($count: Int, $nextToken: String) {\n  getAllPackages(count: $count, nextToken: $nextToken) {\n    __typename\n    Packages {\n      __typename\n      barcode\n      time\n    }\n    nextToken\n  }\n}"

  public var count: Int?
  public var nextToken: String?

  public init(count: Int? = nil, nextToken: String? = nil) {
    self.count = count
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["count": count, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getAllPackages", arguments: ["count": GraphQLVariable("count"), "nextToken": GraphQLVariable("nextToken")], type: .nonNull(.object(GetAllPackage.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getAllPackages: GetAllPackage) {
      self.init(snapshot: ["__typename": "Query", "getAllPackages": getAllPackages.snapshot])
    }

    public var getAllPackages: GetAllPackage {
      get {
        return GetAllPackage(snapshot: snapshot["getAllPackages"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "getAllPackages")
      }
    }

    public struct GetAllPackage: GraphQLSelectionSet {
      public static let possibleTypes = ["PackageLogger"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("Packages", type: .nonNull(.list(.nonNull(.object(Package.selections))))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(packages: [Package], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "PackageLogger", "Packages": packages.map { $0.snapshot }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var packages: [Package] {
        get {
          return (snapshot["Packages"] as! [Snapshot]).map { Package(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "Packages")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Package: GraphQLSelectionSet {
        public static let possibleTypes = ["PackageLog"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("barcode", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("time", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(barcode: GraphQLID, time: String? = nil) {
          self.init(snapshot: ["__typename": "PackageLog", "barcode": barcode, "time": time])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var barcode: GraphQLID {
          get {
            return snapshot["barcode"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "barcode")
          }
        }

        public var time: String? {
          get {
            return snapshot["time"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "time")
          }
        }
      }
    }
  }
}

public final class GetPackageQuery: GraphQLQuery {
  public static let operationString =
    "query GetPackage($barcode: ID) {\n  getPackage(barcode: $barcode) {\n    __typename\n    barcode\n    time\n  }\n}"

  public var barcode: GraphQLID?

  public init(barcode: GraphQLID? = nil) {
    self.barcode = barcode
  }

  public var variables: GraphQLMap? {
    return ["barcode": barcode]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getPackage", arguments: ["barcode": GraphQLVariable("barcode")], type: .nonNull(.object(GetPackage.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getPackage: GetPackage) {
      self.init(snapshot: ["__typename": "Query", "getPackage": getPackage.snapshot])
    }

    public var getPackage: GetPackage {
      get {
        return GetPackage(snapshot: snapshot["getPackage"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "getPackage")
      }
    }

    public struct GetPackage: GraphQLSelectionSet {
      public static let possibleTypes = ["PackageLog"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("barcode", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("time", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(barcode: GraphQLID, time: String? = nil) {
        self.init(snapshot: ["__typename": "PackageLog", "barcode": barcode, "time": time])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var barcode: GraphQLID {
        get {
          return snapshot["barcode"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "barcode")
        }
      }

      public var time: String? {
        get {
          return snapshot["time"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "time")
        }
      }
    }
  }
}