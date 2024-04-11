import 'package:flutter/material.dart';
import 'package:portfolio/data/model.dart';
import 'package:portfolio/view/right/contact_info.dart';
import 'package:portfolio/view/right/work_experience.dart';

class Contents extends StatefulWidget {
  final double width;
  final double height;
  const Contents({required this.width, required this.height, super.key});

  @override
  State<Contents> createState() => _ContentsState();
}

class _ContentsState extends State<Contents> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    List<WorkExperienceModel> list = [ibebuData, reverseMountaiData];

    return Expanded(
      child: PageView.builder(
        controller: controller,
        scrollDirection: Axis.vertical,
        itemCount: list.length + 1,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              index == 0
                  ? ContactInfo(width: widget.width)
                  : WorkExperience(
                      list: [list[index - 1]],
                      width: widget.width,
                      height: widget.height,
                    ),
            ],
          );
        },
      ),
    );
  }

  WorkExperienceModel ibebuData = const WorkExperienceModel(
    companyName: "(주) IBEBU",
    period: "2023.07 - 2024.03",
    projects: [
      ProjectListItemModel(
        projectName: "IBEBU APP",
        projectStacks: "Dart, Flutter",
        description: "재외국민을 위한 비대면 진료 서비스 앱 개발",
        iosLink:
            "https://apps.apple.com/kr/app/%EC%95%84%EC%9D%B4%EB%B2%A0%EB%B8%8C/id6449995032",
        aosLink:
            "https://play.google.com/store/apps/details?id=net.ibebu.mobile.user&pcampaignid=web_share",
        pages: [
          ProjectPageListItemModel(
            pageName: "병원목록 화면",
            tasks: ["병원 목록 조회, 예약 가능 여부 및 즐겨찾기 등록 확인"],
          ),
          ProjectPageListItemModel(
            pageName: "검색화면",
            tasks: ["선택한 키워드 또는 입력한 텍스트에 따라 검색 결과 조회"],
          ),
          ProjectPageListItemModel(
            pageName: "이용내역 화면",
            tasks: [
              "외래진료/심리상담/성형상담 등에 따른 탭바",
              "현재 진료 진행 상태에 따라 UI 구분",
              "처방전 PDF 보기, 다운로드",
            ],
          ),
          ProjectPageListItemModel(
            pageName: "마이페이지",
            tasks: [
              "내 정보 수정",
              "비밀번호 검증 및 변경",
              "회원탈퇴(탈퇴 사유 체크 박스, 기타 사유 입력, 사유 미체크시 버튼 비활성화)",
              "구독(연/월 구독 타입 선택 후 결제 화면 이동, 결제 완료시 리다이렉트)",
              "1:1 문의 조회, 등록, 삭제",
              "FAQ 조회",
            ],
          ),
        ],
      ),
      ProjectListItemModel(
        projectName: "IBEBU MALL APP",
        projectStacks: "Dart, Flutter",
        iosLink:
            "https://apps.apple.com/kr/app/%EC%95%84%EC%9D%B4%EB%B2%A0%EB%B8%8C/id6449995032",
        aosLink:
            "https://play.google.com/store/apps/details?id=net.ibebu.mobile.user&pcampaignid=web_share",
        description: "아이베브 회원을 위한 몰 서비스 앱 개발 (아이베브 앱 내에서 확인할 수 있습니다.)",
        pages: [
          ProjectPageListItemModel(
            pageName: "메인화면",
            tasks: [
              "상단 홍보 상품 이미지 슬라이드 및 인디케이터 UI",
              "Best Products 상점에 따른 탭바 구현, 선택한 탭의 상품 목록 조회",
              "장바구니 아이콘의 담긴 상품 개수 조회 및 갱신"
            ],
          ),
          ProjectPageListItemModel(
            pageName: "검색화면",
            tasks: ["입력한 텍스트에 따라 검색 결과 조회"],
          ),
          ProjectPageListItemModel(
            pageName: "장바구니 화면",
            tasks: [
              "주문 타입(배송/픽업) 선택",
              "주문 타입 선택시 배송지 관리 화면 이동 또는 픽업지 선택 바텀시트 노출",
              "상품 전체 선택",
              "상품 선택",
              "선택한 상품 삭제",
              "상품 품절시 dim 처리",
              "선택한 주문 타입에 따라 배송비 조회",
              "선택한 상품에 따라 결제 금액 조회",
              "상품 수량 변경 및 수량에 따라 금액 조회",
            ],
          ),
          ProjectPageListItemModel(
            pageName: "주문내역 화면",
            tasks: [
              "주문 내역 목록 조회",
            ],
          ),
          ProjectPageListItemModel(
            pageName: "주문상세 화면",
            tasks: [
              "현재 주문 상태에 따라 UI 구분(결제 완료, 배송 준비, 배송중, 배송 완료, 취소, ...)",
              "상품 개별 취소",
              "상품 전체 취소",
              "배송 현황 조회",
              "취소 정보 조회",
              "교환/환불 정보 조회",
            ],
          ),
        ],
      )
    ],
  );

  WorkExperienceModel reverseMountaiData = const WorkExperienceModel(
    companyName: "(주) 리버스마운틴",
    period: "2023.01 - 2023.06",
    projects: [
      ProjectListItemModel(
        projectName: "타임콜라보",
        description: "조직의 일정 및 성과 관리 서비스 웹 개발",
        projectStacks: "Dart, Flutter",
        pages: [
          ProjectPageListItemModel(
            pageName: "랜딩페이지",
            tasks: [
              "페이지뷰를 이용한 랜딩페이지 UI",
            ],
          ),
          ProjectPageListItemModel(
            pageName: "글 목록 화면",
            tasks: [
              "분류에 따라 글 목록 조회",
            ],
          ),
          ProjectPageListItemModel(
            pageName: "일정 상세 화면",
            tasks: [
              "일정 조회, 삭제, 수정 및 추가적인 글 작성 버튼",
            ],
          )
        ],
      ),
    ],
  );
}
