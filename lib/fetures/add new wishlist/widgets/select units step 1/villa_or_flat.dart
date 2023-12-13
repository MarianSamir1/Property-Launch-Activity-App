// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/cubit.dart';
// import 'package:property_launch_app/fetures/add%20new%20wishlist/controller/states.dart';
// import '../../../../utilities/components/app sheard components/selectabel_filter_list_widget.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class VillaOrFlat extends StatelessWidget {
//   const VillaOrFlat({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CreateNewWishlistCubit, CreateNewWishlistState>(
//       builder: (context, state) => ListView.separated(
//         scrollDirection: Axis.horizontal,
//         itemCount: CreateNewWishlistCubit.get(context).villaOrFlatList.length,
//         itemBuilder: (context, index) => SelectableFilterWidget(
//           containerTitle:
//               CreateNewWishlistCubit.get(context).villaOrFlatList[index],
//           currentIndex:
//               CreateNewWishlistCubit.get(context).villaOrFlatCurrentIndex,
//           containerIndex: index,
//           onTap: () {
//             CreateNewWishlistCubit.get(context).isVillaChangeFun(
//               villaOrFlat: index,
//             );
//           },
//         ),
//         separatorBuilder: (context, index) => SizedBox(width: 10.w),
//       ),
//     );
//   }
// }
