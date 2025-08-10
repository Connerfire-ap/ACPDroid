.class final Lorg/ligi/passandroid/ui/PassListActivity$onCreate$2;
.super Ljava/lang/Object;
.source "PassListActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassListActivity;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassListActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassListActivity$onCreate$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "it"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassListActivity$onCreate$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassListActivity;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassListActivity$onCreate$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    invoke-virtual {v3}, Lorg/ligi/passandroid/ui/PassListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "resources"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lorg/ligi/passandroid/functions/PassTemplatesKt;->createAndAddEmptyPass(Lorg/ligi/passandroid/model/PassStore;Landroid/content/res/Resources;)Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v1

    .line 181
    .local v1, "pass":Lorg/ligi/passandroid/model/pass/Pass;
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassListActivity$onCreate$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    sget v3, Lorg/ligi/passandroid/R$id;->fam:I

    invoke-virtual {v2, v3}, Lorg/ligi/passandroid/ui/PassListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v2}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->collapse()V

    .line 182
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassListActivity$onCreate$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    const-class v3, Lorg/ligi/passandroid/ui/PassEditActivity;

    invoke-static {v2, v3}, Lorg/ligi/kaxt/ContextExtensionsKt;->startActivityFromClass(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassListActivity$onCreate$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    sget v3, Lorg/ligi/passandroid/R$id;->tab_layout:I

    invoke-virtual {v2, v3}, Lorg/ligi/passandroid/ui/PassListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout;

    const-string v3, "tab_layout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    if-gez v2, :cond_0

    .line 185
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassListActivity$onCreate$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    const v3, 0x7f0700a6

    invoke-virtual {v2, v3}, Lorg/ligi/passandroid/ui/PassListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "newTitle":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassListActivity$onCreate$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    invoke-virtual {v2}, Lorg/ligi/passandroid/ui/PassListActivity;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    invoke-interface {v2}, Lorg/ligi/passandroid/model/PassStore;->getClassifier()Lorg/ligi/passandroid/model/PassClassifier;

    move-result-object v2

    const-string v3, "newTitle"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v0}, Lorg/ligi/passandroid/model/PassClassifier;->moveToTopic(Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;)V

    .line 191
    return-void

    .line 187
    .end local v0    # "newTitle":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassListActivity$onCreate$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    # invokes: Lorg/ligi/passandroid/ui/PassListActivity;->getAdapter()Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;
    invoke-static {v2}, Lorg/ligi/passandroid/ui/PassListActivity;->access$getAdapter$p(Lorg/ligi/passandroid/ui/PassListActivity;)Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;

    move-result-object v3

    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassListActivity$onCreate$2;->this$0:Lorg/ligi/passandroid/ui/PassListActivity;

    sget v4, Lorg/ligi/passandroid/R$id;->tab_layout:I

    invoke-virtual {v2, v4}, Lorg/ligi/passandroid/ui/PassListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout;

    const-string v4, "tab_layout"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/ligi/passandroid/ui/PassTopicFragmentPagerAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
