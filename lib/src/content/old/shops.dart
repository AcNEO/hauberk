import '../../engine.dart';
import '../item/items.dart';

/// Static class containing all of the [Shop]s.
class Shops {
  static final List<Shop> all = [];

  static void initialize() {
    shop("The General's General Store",
        ["Club", "Staff", "Quarterstaff", "Whip", "Dagger", "Hatchet", "Axe"]);

    shop("Dirk's Death Emporium", [
      "Hammer",
      "Mattock",
      "War Hammer",
      "Morningstar",
      "Mace",
      "Chain Whip",
      "Flail",
      "Falchion",
      "Rapier",
      "Shortsword",
      "Scimitar",
      "Cutlass",
      "Spear",
      "Angon",
      "Lance",
      "Partisan",
      "Valaska",
      "Battleaxe",
      "Short Bow",
      "Longbow",
      "Crossbow"
    ]);

    shop("Skullduggery and Bamboozelry",
        ["Dirk", "Dagger", "Stiletto", "Rondel", "Baselard"]);

    shop("Garthag's Armoury", [
      "Cloak",
      "Fur Cloak",
      "Cloth Shirt",
      "Leather Shirt",
      "Jerkin",
      "Leather Armor",
      "Padded Armor",
      "Studded Armor",
      "Mail Hauberk",
      "Scale Mail",
      "Robe",
      "Fur-lined Robe",
      "Pair of Sandals",
      "Pair of Shoes",
      "Pair of Boots",
      "Pair of Plated Boots",
      "Pair of Greaves"
    ]);

    shop("Unguence the Alchemist", [
      "Soothing Balm",
      "Mending Salve",
      "Healing Poultice",
      "Antidote",
      "Potion of Quickness",
      "Potion of Alacrity",
      "Bottled Wind",
      "Bottled Ice",
      "Bottled Fire",
      "Bottled Ocean",
      "Bottled Earth",
      "Scroll of Sidestepping",
      "Scroll of Phasing",
      "Scroll of Item Detection"
    ]);
  }

  /*
  The Droll Magery
  Glur's Rare Artifacts
  */
}

void shop(String name, List<String> itemTypes) {
  var items = itemTypes.map((typeName) {
    var itemType = Items.types.find(typeName);
    return Item(itemType, itemType.maxStack);
  }).toList();
  Shops.all.add(Shop(name, items));
}
