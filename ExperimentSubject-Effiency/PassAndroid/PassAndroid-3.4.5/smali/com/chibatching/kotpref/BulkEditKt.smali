.class public final Lcom/chibatching/kotpref/BulkEditKt;
.super Ljava/lang/Object;
.source "BulkEdit.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a5\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u0006H\u0086\u0008\u00a2\u0006\u0002\u0010\u0007\u001a5\u0010\u0008\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0002H\u00022\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0008\u0006H\u0086\u0008\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "blockingBulk",
        "",
        "T",
        "Lcom/chibatching/kotpref/KotprefModel;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lcom/chibatching/kotpref/KotprefModel;Lkotlin/jvm/functions/Function1;)V",
        "bulk",
        "kotpref_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x7
    }
.end annotation


# direct methods
.method public static final blockingBulk(Lcom/chibatching/kotpref/KotprefModel;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p0, "$receiver"    # Lcom/chibatching/kotpref/KotprefModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/chibatching/kotpref/KotprefModel;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1",
            "<-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/chibatching/kotpref/KotprefModel;->beginBulkEdit()V

    .line 17
    nop

    .line 18
    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    invoke-virtual {p0}, Lcom/chibatching/kotpref/KotprefModel;->blockingCommitBulkEdit()V

    .line 24
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/chibatching/kotpref/KotprefModel;->cancelBulkEdit()V

    .line 21
    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0
.end method

.method public static final bulk(Lcom/chibatching/kotpref/KotprefModel;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p0, "$receiver"    # Lcom/chibatching/kotpref/KotprefModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/chibatching/kotpref/KotprefModel;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1",
            "<-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "block"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/chibatching/kotpref/KotprefModel;->beginBulkEdit()V

    .line 6
    nop

    .line 7
    :try_start_0
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-virtual {p0}, Lcom/chibatching/kotpref/KotprefModel;->commitBulkEdit()V

    .line 13
    return-void

    .line 8
    :catch_0
    move-exception v0

    .line 9
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/chibatching/kotpref/KotprefModel;->cancelBulkEdit()V

    .line 10
    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0
.end method
