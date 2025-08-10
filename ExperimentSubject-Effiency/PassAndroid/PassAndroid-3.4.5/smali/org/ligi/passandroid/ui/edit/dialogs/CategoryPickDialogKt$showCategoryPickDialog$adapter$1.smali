.class public final Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt$showCategoryPickDialog$adapter$1;
.super Landroid/widget/BaseAdapter;
.source "CategoryPickDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt;->showCategoryPickDialog(Landroid/content/Context;Lorg/ligi/passandroid/model/pass/Pass;Lorg/greenrobot/eventbus/EventBus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J\"\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "org/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt$showCategoryPickDialog$adapter$1",
        "Landroid/widget/BaseAdapter;",
        "(Landroid/content/Context;)V",
        "getCount",
        "",
        "getItem",
        "Lorg/ligi/passandroid/model/pass/PassType;",
        "position",
        "getItemId",
        "",
        "getView",
        "Landroid/view/View;",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Landroid/content/Context;

    .prologue
    .line 23
    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt$showCategoryPickDialog$adapter$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 25
    # getter for: Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt;->passTypes:[Lorg/ligi/passandroid/model/pass/PassType;
    invoke-static {}, Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt;->access$getPassTypes$p()[Lorg/ligi/passandroid/model/pass/PassType;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt$showCategoryPickDialog$adapter$1;->getItem(I)Lorg/ligi/passandroid/model/pass/PassType;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/ligi/passandroid/model/pass/PassType;
    .locals 1
    .param p1, "position"    # I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 27
    # getter for: Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt;->passTypes:[Lorg/ligi/passandroid/model/pass/PassType;
    invoke-static {}, Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt;->access$getPassTypes$p()[Lorg/ligi/passandroid/model/pass/PassType;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 29
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v5, "parent"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v5, p0, Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt$showCategoryPickDialog$adapter$1;->$context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 33
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030037

    const/4 v6, 0x0

    invoke-virtual {v2, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 35
    .local v1, "inflate":Landroid/view/View;
    const v5, 0x7f0e0098

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type org.ligi.passandroid.ui.views.BaseCategoryIndicatorView"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    check-cast v0, Lorg/ligi/passandroid/ui/views/BaseCategoryIndicatorView;

    .line 37
    .local v0, "categoryIndicatorView":Lorg/ligi/passandroid/ui/views/BaseCategoryIndicatorView;
    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/ui/edit/dialogs/CategoryPickDialogKt$showCategoryPickDialog$adapter$1;->getItem(I)Lorg/ligi/passandroid/model/pass/PassType;

    move-result-object v4

    .line 38
    .local v4, "type":Lorg/ligi/passandroid/model/pass/PassType;
    invoke-virtual {v0, v4}, Lorg/ligi/passandroid/ui/views/BaseCategoryIndicatorView;->setImageByCategory(Lorg/ligi/passandroid/model/pass/PassType;)V

    .line 39
    invoke-static {v4}, Lorg/ligi/passandroid/functions/CategoryHelperKt;->getCategoryDefaultBG(Lorg/ligi/passandroid/model/pass/PassType;)I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/ligi/passandroid/ui/views/BaseCategoryIndicatorView;->setAccentColor(I)V

    .line 40
    const v5, 0x7f0e00ad

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    check-cast v3, Landroid/widget/TextView;

    .line 41
    .local v3, "tv":Landroid/widget/TextView;
    invoke-static {v4}, Lorg/ligi/passandroid/functions/CategoryHelperKt;->getHumanCategoryString(Lorg/ligi/passandroid/model/pass/PassType;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 43
    const-string v5, "inflate"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
