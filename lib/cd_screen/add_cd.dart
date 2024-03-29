import 'package:adaptive_scrollbar/adaptive_scrollbar.dart';
import 'package:flutter/material.dart';
import 'package:mei/utils/custom_loader.dart';

import '../utils/custom_appbar.dart';
import '../utils/mei_colors.dart';

class AddCD extends StatefulWidget {
  const AddCD({super.key});

  @override
  State<AddCD> createState() => _AddCDState();
}

class _AddCDState extends State<AddCD> {

  bool loading = false;
  final _verticalScrollController1 = ScrollController();
  final _verticalScrollController2 = ScrollController();
  final _horizontalScrollController1 = ScrollController();
  final _horizontalScrollController2 = ScrollController();

  final plantController = TextEditingController();
  final docIdController = TextEditingController();
  final docDateController = TextEditingController();
  final fromController = TextEditingController();
  final toController = TextEditingController();


  List cdList = [{
    // "snNo":"",
    // "invoiceNo":"",
    // "invoiceDate":"",
    // "customer":"",
    // "city":"",
    // "invoiceValue":"",
    // "receivedValue":"",
    // "lrNo":"",
    // "transporter":"",
    // "deliveryDate":"",
    // "receivedDate":"",
    // "bankHolidays":"",
    // "sundayOffs":"",
    // "cdAmount":"",
    // "narration":"",
    // "accountName":"",
    // "bankAccNo":"",
    // "ifscCode":"",
    // "bank":"",
  }];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(),
      ),
      body: CustomLoader(
        inAsyncCall: loading,
        child: AdaptiveScrollbar(
          underColor: Colors.blueGrey.withOpacity(0.3),
          sliderDefaultColor: Colors.grey.withOpacity(0.7),
          sliderActiveColor: Colors.grey,
          controller: _verticalScrollController1,
          child: SingleChildScrollView(
            controller: _verticalScrollController1,
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Card(
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: BorderSide(
                            color: mTextFieldBorder.withOpacity(0.8), width: 1),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18, top: 15, bottom: 10),
                            child: Row(
                              children: [
                                const Text("Plant",style: TextStyle(fontSize: 12)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 100),
                                  child: SizedBox(
                                    width: 200,
                                    child: TextFormField(
                                      style: const TextStyle(fontSize: 11),
                                      controller: plantController,
                                      decoration: customerFieldDecoration(controller: plantController, hintText: ""),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, top: 0, bottom: 10),
                            child: Row(
                              children: [
                                const Text("Doc ID",style: TextStyle(fontSize: 12)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 94),
                                  child: SizedBox(
                                    width: 200,
                                    child: TextFormField(
                                      style: const TextStyle(fontSize: 11),
                                      controller: docIdController,
                                      decoration: customerFieldDecoration(controller: docIdController, hintText: ""),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, top: 0, bottom: 10,),
                            child: Row(
                              children: [
                                const Text("Doc Date",style: TextStyle(fontSize: 12)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: SizedBox(
                                    width: 200,
                                    child: TextFormField(
                                      style: const TextStyle(fontSize: 11),
                                      controller: docDateController,
                                      decoration: customerFieldDecoration(controller: docDateController, hintText: ""),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, top: 0, bottom: 10),
                            child: Row(
                              children: [
                                const Text("From",style: TextStyle(fontSize: 12)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 100),
                                  child: SizedBox(
                                    width: 200,
                                    child: TextFormField(
                                      style: const TextStyle(fontSize: 11),
                                      controller: fromController,
                                      decoration: customerFieldDecoration(controller: fromController, hintText: ""),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, top: 0, bottom: 15),
                            child: Row(
                              children: [
                                const Text("To",style: TextStyle(fontSize: 12)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 115),
                                  child: SizedBox(
                                    width: 200,
                                    child: TextFormField(
                                      style: const TextStyle(fontSize: 11),
                                      controller: toController,
                                      decoration: customerFieldDecoration(controller: toController, hintText: ""),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Card(
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                            color: mTextFieldBorder.withOpacity(0.8),
                            width: 1
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Container(
                              height: 40,
                              color: Colors.white,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          cdList.add({
                                            "snNo":(cdList.length+1).toString(),
                                            "invoiceNo":"",
                                            "invoiceDate":"",
                                            "customer":"",
                                            "city":"",
                                            "invoiceValue":"",
                                            "receivedValue":"",
                                            "lrNo":"",
                                            "transporter":"",
                                            "deliveryDate":"",
                                            "receivedDate":"",
                                            "bankHolidays":"",
                                            "sundayOffs":"",
                                            "cdAmount":"",
                                            "narration":"",
                                            "accountName":"",
                                            "bankAccNo":"",
                                            "ifscCode":"",
                                            "bank":"",
                                          });
                                        });
                                      },
                                      icon: const Icon(Icons.add_circle_outlined,color: Colors.blue,)
                                  )
                                ],
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            controller: _horizontalScrollController2,
                            scrollDirection: Axis.horizontal,
                            child: Column(
                              children: [
                                Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo[50],
                                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))
                                  ),
                                  child: const Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6, left: 0),
                                        child: SizedBox(
                                          height: 25,
                                          width: 30,
                                          child: Text("",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6, left: 10),
                                        child: SizedBox(
                                          height: 25,
                                          width: 50,
                                          child: Text("",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6, left: 0),
                                        child: SizedBox(
                                          height: 25,
                                          width: 150,
                                          child: Text("Invoice No",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 150,
                                          child: Text("Invoice Date",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 200,
                                          child: Text("Customer",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 150,
                                          child: Text("City",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 150,
                                          child: Text("Invoice Value",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 150,
                                          child: Text("Received Value",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 200,
                                          child: Text("LR No",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 150,
                                          child: Text("Transporter",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 150,
                                          child: Text("Delivery Date",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 150,
                                          child: Text("Receipt Date",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 150,
                                          child: Text("Bank Holidays",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 150,
                                          child: Text("Sunday Offs",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 150,
                                          child: Text("CD Amount",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 150,
                                          child: Text("Narration",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 200,
                                          child: Text("Account Name",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 200,
                                          child: Text("Bank Account No",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 200,
                                          child: Text("IFSC Code",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 4.0,right: 6),
                                        child: SizedBox(
                                          height: 25,
                                          width: 150,
                                          child: Text("Bank",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 12)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                for(int i=0; i<cdList.length; i++)
                                  buildCdTable(context, i, cdList)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.transparent,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed:  () {
                List cdRecords = [];
                for (int i = 0; i < cdList.length; i++) {
                  cdRecords.add(cdList[i]);
                }
              Map savedData = {
                "plant":plantController.text,
                "docId":docIdController.text,
                "docDate":docDateController.text,
                "from":fromController.text,
                "to":toController.text,
                "cdTable": cdRecords
              };
              print('--------- saved data -----------');
              print(savedData);
            },
              child: const Text("Submit",style: TextStyle(color: Colors.white)),
            ),
            const SizedBox(width: 30,),
            MaterialButton(
              color: Colors.grey,
              onPressed:  () {

            },child: const Text("Cancel",style: TextStyle(color: Colors.white)),),
          ],
        ),
      ),
    );
  }

  customerFieldDecoration({required TextEditingController controller, required String hintText, bool? error, Function? onTap}) {
    return InputDecoration(
      constraints: BoxConstraints(maxHeight: error == true ? 50 : 30),
      hintText: hintText,
      hintStyle: const TextStyle(fontSize: 11),
      border:
          const OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
      counterText: '',
      contentPadding: const EdgeInsets.fromLTRB(12, 00, 0, 0),
      enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: mTextFieldBorder)),
      focusedBorder:
          const OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
    );
  }

  buildCdTable(BuildContext context, int i, List cdList) {
    TextEditingController invoiceNoController = TextEditingController();
    TextEditingController invoiceDateController = TextEditingController();
    TextEditingController customerController = TextEditingController();
    TextEditingController cityController = TextEditingController();
    TextEditingController invoiceValueController = TextEditingController();
    TextEditingController receivedValueController = TextEditingController();
    TextEditingController lrNoController = TextEditingController();
    TextEditingController transporterController = TextEditingController();
    TextEditingController deliveryDateController = TextEditingController();
    TextEditingController receiptDateController = TextEditingController();
    TextEditingController bankHolidaysController = TextEditingController();
    TextEditingController sundayOffsController = TextEditingController();
    TextEditingController cdAmountController = TextEditingController();
    TextEditingController narrationController = TextEditingController();
    TextEditingController accountNameController = TextEditingController();
    TextEditingController bankAccNoController = TextEditingController();
    TextEditingController ifscCodeController = TextEditingController();
    TextEditingController bankController = TextEditingController();
    invoiceNoController.text = cdList[i]["invoiceNo"] ?? "";
    invoiceDateController.text = cdList[i]["invoiceDate"]?? "";
    customerController.text = cdList[i]["customer"]?? "";
    cityController.text = cdList[i]["city"]?? "";
    invoiceValueController.text = cdList[i]["invoiceValue"]?? "";
    receivedValueController.text = cdList[i]["receivedValue"]?? "";
    lrNoController.text = cdList[i]["lrNo"]?? "";
    transporterController.text = cdList[i]["transporter"]?? "";
    deliveryDateController.text = cdList[i]["deliveryDate"]?? "";
    receiptDateController.text = cdList[i]["receiptDate"]?? "";
    bankHolidaysController.text = cdList[i]["bankHolidays"]?? "";
    sundayOffsController.text = cdList[i]["sundayOffs"]?? "";
    cdAmountController.text = cdList[i]["cdAmount"]?? "";
    narrationController.text = cdList[i]["narration"]?? "";
    accountNameController.text = cdList[i]["accountName"]?? "";
    bankAccNoController.text = cdList[i]["bankAccNo"]?? "";
    ifscCodeController.text = cdList[i]["ifscCode"]?? "";
    bankController.text = cdList[i]["bank"]?? "";
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              // height: 25,
              width: 30,
              child: InkWell(
                onTap: () {
                  setState(() {
                    cdList.removeAt(i);
                  });
                },
                child: const Icon(Icons.delete),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 10),
            child: SizedBox(
              // height: 25,
              width: 50,
              child: Text((i+1).toString(),style: const TextStyle(color: Colors.black,fontSize: 12)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 150,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: invoiceNoController,
                decoration: customerFieldDecoration(controller: invoiceNoController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["invoiceNo"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 150,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: invoiceDateController,
                decoration: customerFieldDecoration(controller: invoiceDateController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["invoiceDate"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 200,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: customerController,
                decoration: customerFieldDecoration(controller: customerController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["customer"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 150,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: cityController,
                decoration: customerFieldDecoration(controller: cityController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["city"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 150,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: invoiceValueController,
                decoration: customerFieldDecoration(controller: invoiceValueController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["invoiceValue"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 150,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: receivedValueController,
                decoration: customerFieldDecoration(controller: receivedValueController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["receivedValue"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 200,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: lrNoController,
                decoration: customerFieldDecoration(controller: lrNoController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["lrNo"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 150,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: transporterController,
                decoration: customerFieldDecoration(controller: transporterController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["transporter"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 150,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: deliveryDateController,
                decoration: customerFieldDecoration(controller: deliveryDateController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["deliveryDate"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 150,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: receiptDateController,
                decoration: customerFieldDecoration(controller: receiptDateController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["receiptDate"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 150,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: bankHolidaysController,
                decoration: customerFieldDecoration(controller: bankHolidaysController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["bankHolidays"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 150,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: sundayOffsController,
                decoration: customerFieldDecoration(controller: sundayOffsController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["sundayOffs"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 150,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: cdAmountController,
                decoration: customerFieldDecoration(controller: cdAmountController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["cdAmount"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 150,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: narrationController,
                decoration: customerFieldDecoration(controller: narrationController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["narration"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 200,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: accountNameController,
                decoration: customerFieldDecoration(controller: accountNameController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["accountName"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 200,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: bankAccNoController,
                decoration: customerFieldDecoration(controller: bankAccNoController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["bankAccNo"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 200,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: ifscCodeController,
                decoration: customerFieldDecoration(controller: ifscCodeController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["ifscCode"] = value;
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4.0,right: 6, left: 0),
            child: SizedBox(
              height: 25,
              width: 150,
              child: TextField(
                style: const TextStyle(fontSize: 11),
                controller: bankController,
                decoration: customerFieldDecoration(controller: bankController, hintText: ""),
                onChanged: (value) {
                  cdList[i]["bank"] = value;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
