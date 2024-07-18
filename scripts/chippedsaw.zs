import crafttweaker.api.item.IItemStack;

for tag in <tagmanager:items>.tags() {
    if tag.id().namespace == "chipped" {
        for item in tag {
            <recipetype:create:cutting>.addJsonRecipe("chipsaw_" + item.registryName.namespace + "_"+item.registryName.path, {
                ingredients: [tag],
                results: [(item as IItemStack)],
                processingTime: 50
            });
        }
    }
}
