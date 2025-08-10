.class public final Lorg/ligi/kaxtui/ContextExtensionsKt;
.super Ljava/lang/Object;
.source "ContextExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a1\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00042\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008\u001a*\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\t2\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "alert",
        "",
        "Landroid/content/Context;",
        "message",
        "",
        "title",
        "onOKListener",
        "Landroid/content/DialogInterface$OnClickListener;",
        "(Landroid/content/Context;ILjava/lang/Integer;Landroid/content/DialogInterface$OnClickListener;)V",
        "",
        "kaxtui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method public static final alert(Landroid/content/Context;ILjava/lang/Integer;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p0, "$receiver"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "message"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "onOKListener"    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v2, "$receiver"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 20
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/Number;

    .end local p2    # "title":Ljava/lang/Integer;
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 21
    .local v1, "it":I
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 23
    .end local v1    # "it":I
    :cond_0
    const v2, 0x104000a

    invoke-virtual {v0, v2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 24
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 25
    return-void
.end method

.method public static final alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p0, "$receiver"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "onOKListener"    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const-string v2, "$receiver"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "message"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "message":Ljava/lang/String;
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 10
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 11
    .local v1, "it":Ljava/lang/String;
    check-cast v1, Ljava/lang/CharSequence;

    .end local v1    # "it":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 13
    :cond_0
    const v2, 0x104000a

    invoke-virtual {v0, v2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 14
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 15
    return-void
.end method

.method public static bridge synthetic alert$default(Landroid/content/Context;ILjava/lang/Integer;Landroid/content/DialogInterface$OnClickListener;ILjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 18
    check-cast v0, Ljava/lang/Integer;

    :goto_0
    and-int/lit8 v2, p4, 0x4

    if-eqz v2, :cond_0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    :goto_1
    invoke-static {p0, p1, v0, v1}, Lorg/ligi/kaxtui/ContextExtensionsKt;->alert(Landroid/content/Context;ILjava/lang/Integer;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_0
    move-object v1, p3

    goto :goto_1

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public static bridge synthetic alert$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ILjava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 8
    check-cast v0, Ljava/lang/String;

    :goto_0
    and-int/lit8 v2, p4, 0x4

    if-eqz v2, :cond_0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    :goto_1
    invoke-static {p0, p1, v0, v1}, Lorg/ligi/kaxtui/ContextExtensionsKt;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_0
    move-object v1, p3

    goto :goto_1

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method
