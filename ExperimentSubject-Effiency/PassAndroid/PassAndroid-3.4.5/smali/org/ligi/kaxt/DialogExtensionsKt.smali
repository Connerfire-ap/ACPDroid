.class public final Lorg/ligi/kaxt/DialogExtensionsKt;
.super Ljava/lang/Object;
.source "DialogExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0013\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0002\u00a2\u0006\u0002\u0010\u0003\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u001a*\u0010\u0005\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\u00082\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "dismissIfNotNullAndShowing",
        "",
        "Landroid/app/Dialog;",
        "(Landroid/app/Dialog;)Lkotlin/Unit;",
        "dismissIfShowing",
        "setButton",
        "Landroid/app/AlertDialog;",
        "whichButton",
        "",
        "label",
        "action",
        "Lkotlin/Function0;",
        "lib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x7
    }
.end annotation


# direct methods
.method public static final dismissIfNotNullAndShowing(Landroid/app/Dialog;)Lkotlin/Unit;
    .locals 1
    .param p0, "$receiver"    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 15
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/ligi/kaxt/DialogExtensionsKt;->dismissIfShowing(Landroid/app/Dialog;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final dismissIfShowing(Landroid/app/Dialog;)V
    .locals 1
    .param p0, "$receiver"    # Landroid/app/Dialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 12
    :cond_0
    return-void
.end method

.method public static final setButton(Landroid/app/AlertDialog;IILkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p0, "$receiver"    # Landroid/app/AlertDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "whichButton"    # I
    .param p2, "label"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "action"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AlertDialog;",
            "II",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lorg/ligi/kaxt/DialogExtensionsKt$setButton$1;

    invoke-direct {v1, p3}, Lorg/ligi/kaxt/DialogExtensionsKt$setButton$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 21
    return-void
.end method
