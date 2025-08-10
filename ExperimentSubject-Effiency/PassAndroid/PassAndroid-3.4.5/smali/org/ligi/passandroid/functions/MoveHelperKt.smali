.class public final Lorg/ligi/passandroid/functions/MoveHelperKt;
.super Ljava/lang/Object;
.source "MoveHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "moveWithUndoSnackbar",
        "",
        "passClassifier",
        "Lorg/ligi/passandroid/model/PassClassifier;",
        "pass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "topic",
        "",
        "activity",
        "Landroid/app/Activity;",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method public static final moveWithUndoSnackbar(Lorg/ligi/passandroid/model/PassClassifier;Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4
    .param p0, "passClassifier"    # Lorg/ligi/passandroid/model/PassClassifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "topic"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "activity"    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "passClassifier"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pass"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "topic"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "activity"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Lorg/ligi/passandroid/model/PassClassifier;->getTopic(Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    .local v0, "oldTopic":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "activity.window"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e00d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pass moved to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v2

    .line 13
    const v3, 0x7f0700a9

    new-instance v1, Lorg/ligi/passandroid/functions/MoveHelperKt$moveWithUndoSnackbar$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/ligi/passandroid/functions/MoveHelperKt$moveWithUndoSnackbar$1;-><init>(Lorg/ligi/passandroid/model/PassClassifier;Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3, v1}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 15
    invoke-virtual {p0, p1, p2}, Lorg/ligi/passandroid/model/PassClassifier;->moveToTopic(Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;)V

    .line 16
    return-void
.end method
