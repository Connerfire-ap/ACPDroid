.class public final Lorg/ligi/passandroid/ui/pass_view_holder/CondensedPassViewHolder;
.super Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;
.source "CondensedPassViewHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/pass_view_holder/CondensedPassViewHolder;",
        "Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;",
        "view",
        "Landroid/support/v7/widget/CardView;",
        "(Landroid/support/v7/widget/CardView;)V",
        "apply",
        "",
        "pass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "activity",
        "Landroid/app/Activity;",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/CardView;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v7/widget/CardView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;-><init>(Landroid/support/v7/widget/CardView;)V

    return-void
.end method


# virtual methods
.method public apply(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/PassStore;Landroid/app/Activity;)V
    .locals 4
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "passStore"    # Lorg/ligi/passandroid/model/PassStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "activity"    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const-string v1, "pass"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "passStore"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "activity"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-super {p0, p1, p2, p3}, Lorg/ligi/passandroid/ui/pass_view_holder/PassViewHolder;->apply(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/PassStore;Landroid/app/Activity;)V

    .line 16
    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/ui/pass_view_holder/CondensedPassViewHolder;->getExtraString(Lorg/ligi/passandroid/model/pass/Pass;)Ljava/lang/String;

    move-result-object v0

    .local v0, "extraString":Ljava/lang/String;
    move-object v1, v0

    .line 18
    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/pass_view_holder/CondensedPassViewHolder;->getView()Landroid/support/v7/widget/CardView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lorg/ligi/passandroid/R$id;->date:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "view.date"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    .end local v0    # "extraString":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/pass_view_holder/CondensedPassViewHolder;->getView()Landroid/support/v7/widget/CardView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lorg/ligi/passandroid/R$id;->timeAndNavBar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/ui/views/TimeAndNavBar;

    const-string v2, "view.timeAndNavBar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/ligi/passandroid/R$id;->timeButton:I

    invoke-virtual {v1, v2}, Lorg/ligi/passandroid/ui/views/TimeAndNavBar;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "view.timeAndNavBar.timeButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/ui/pass_view_holder/CondensedPassViewHolder;->getTimeInfoString(Lorg/ligi/passandroid/model/pass/Pass;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    return-void

    .restart local v0    # "extraString":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 18
    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/pass_view_holder/CondensedPassViewHolder;->getView()Landroid/support/v7/widget/CardView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v3, Lorg/ligi/passandroid/R$id;->date:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "view.date"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    .end local v0    # "extraString":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/pass_view_holder/CondensedPassViewHolder;->getView()Landroid/support/v7/widget/CardView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v3, Lorg/ligi/passandroid/R$id;->date:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "view.date"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
