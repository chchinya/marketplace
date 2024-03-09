import 'package:flutter/material.dart';
import 'package:marketplace/products.dart';

final List<String> images_product = <String>[
  "https://pcdn.goldapple.ru/p/p/19000018368/web/696d6167654d6f64656c8dc3e1142f4c01efullhd.webp",
  "https://pcdn.goldapple.ru/p/p/14038900013/web/696d674d61696e8db9a3fc58e8779fullhd.webp",
  "https://pcdn.goldapple.ru/p/p/19000164143/web/7377617463688dbcee2f96f4851fullhd.webp",
  "https://pcdn.goldapple.ru/p/p/19000246614/web/696d674d61696e8dc33a233608645fullhd.webp",
  "https://pcdn.goldapple.ru/p/p/19000040294/web/7377617463688dc00712cea15f7fullhd.webp",
  "https://pcdn.goldapple.ru/p/p/19000114676/web/696d674d61696e8dafdfbe614f76ffullhd.webp",
  "https://pcdn.goldapple.ru/p/p/19000008628/web/7377617463688dc2d904c6edcddfullhd.webp",
  "https://pcdn.goldapple.ru/p/p/24900100005/web/696d6167654d6f64656c8dbe0ea0cdd982ffullhd.webp",
  "https://pcdn.goldapple.ru/p/p/3216800006/web/696d6167654d6f64656c8dc2d7200e18fb8fullhd.webp",
  "https://pcdn.goldapple.ru/p/p/19000114649/web/696d674d61696e8dc08532b96520dfullhd.webp"
];
final List<String> product_name = <String>[
  "МАТОВАЯ ПОМАДА-МУСС ESTÉE LAUDER pure color whipped matte lip color with moringa butter",
  "БЛЕСК ДЛЯ ГУБ CLARINS natural lip perfector",
  "СИЯЮЩАЯ БАЗА ПОД МАКИЯЖ LIMBOSS skin accessories glow",
  "УСТОЙЧИВЫЙ ТОНАЛЬНЫЙ ФИТОКРЕМ SISLEY phyto-teint perfection",
  "СТИК ДЛЯ КОНТУРИНГА KIKO MILANO sculpting touch creamy stick contour",
  "ВОДОСТОЙКАЯ ПОДВОДКА-ФЛОМАСТЕР DIOR diorshow on stage liner",
  "ТУШЬ ДЛЯ БРОВЕЙ INFLUENCE BEAUTY brow robot",
  "ОТТЕНОЧНЫЙ ГЕЛЬ ДЛЯ БРОВЕЙ ANASTASIA BEVERLY HILLS tinted brow gel",
  "ТУШЬ ДЛЯ РЕСНИЦ С ЭФФЕКТОМ СЦЕНИЧЕСКОГО ОБЪЁМА VIVIENNE SABO cabaret premiere",
  "ПАЛЕТКА ДЛЯ ГЛАЗ DIOR BACKSTAGE eye palette"
];
final List<String> product_info = <String>[
  "Помада ложится тонким, но стойким слоем, не оставляя ощущения липкости. Несмотря на матовый финиш, помада не сушит губы: в состав входят питательное масло моринги и гиалуроновая кислота, которые ухаживают за кожей губ и сохраняют их увлажненными на весь день.",
  "Блеск с нежной кремовой текстурой и приятным ароматом подчеркивает естественную красоту губ и одновременно ухаживает за ними. Формула на основе растительных компонентов увлажняет и восстанавливает кожу губ, разглаживает и защищает ее, дарит ощущение комфорта.",
  "В основе формулы лежит масло жожоба, которое питает, дарит комфорт и заметное сияние, словно магический эликсир. Смешивайте с тональной основой или наносите поверх, чтобы придать коже естественный блеск и ухоженный вид.",
  "Устойчивый тональный крем, обеспечивает плотное и при этом незаметное покрытие, скрывает все несовершенства, одновременно ухаживая за кожей. Устойчивый жидкий тональный крем, выравнивает тон, разглаживает кожу и гарантирует эффект безупречного цвета лица с матовым покрытием. ",
  "Карандаш для контурирования с матовым покрытием. Формула обогащена маслом африканского ореха и успокаивающим экстрактом фисташки.",
  "Подводка-Фломастер Diorshow On Stage — водостойкая жидкая подводка Dior с ультрагибким мягким кончиком, который позволяет рисовать безупречные линии и варьировать их ширину за счёт интенсивности нажатия.",
  "Тушь с гелево-кремовой текстурой идеально прокрашивает волоски и визуально делает брови гуще.",
  "Лёгкий оттеночный гель ANASTASIA BEVERLY HILLS с насыщенным тоном фиксирует брови и делает их цвет более выразительным. ",
  "Сенсационная и самая нашумевшая премьера в декоративной косметике - тушь CABARET PREMIÈRE с эффектом сценического объема - выпускается не только в классическом черном цвете, но и в ярких ультрамодных оттенках: Violette, Blue, Green, Brown.",
  "Палетка для глаз Dior Backstage – секретное оружие визажистов Dior, вдохновленное вибрирующей атмосферой, что царит за кулисами показов мод."
];

final List<String> product_price = <String>[
  "2700",
  "2350",
  "3385",
  "8990",
  "1799",
  "4000",
  "375",
  "1533",
  "554",
  "5550"
];

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Каталог"),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: product_name.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemList(
              images: images_product[index],
              name: product_name[index],
              index_number: index,
              price: product_price[index],
            );
          }),
    );
  }
}
