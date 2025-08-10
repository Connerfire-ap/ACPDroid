.class public final Lorg/ligi/kaxt/StandardKt;
.super Ljava/lang/Object;
.source "Standard.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a9\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0002H\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00a2\u0006\u0002\u0010\u0008\u001a9\u0010\t\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u0002H\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00010\u0005\u00a2\u0006\u0002\u0008\u0007H\u0086\u0008\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "applyIf",
        "T",
        "predicate",
        "",
        "block",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "letIf",
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
.method public static final applyIf(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/Object;
    .param p1, "predicate"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z",
            "Lkotlin/jvm/functions/Function1",
            "<-TT;",
            "Lkotlin/Unit;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    if-eqz p1, :cond_0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    return-object p0
.end method

.method public static final letIf(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Ljava/lang/Object;
    .param p1, "predicate"    # Z
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z",
            "Lkotlin/jvm/functions/Function1",
            "<-TT;+TT;>;)TT;"
        }
    .end annotation

    .prologue
    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    if-eqz p1, :cond_0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 6
    .end local p0    # "$receiver":Ljava/lang/Object;
    :cond_0
    return-object p0
.end method
