.class public final Lcom/github/salomonbrys/kodein/KodeinKt;
.super Ljava/lang/Object;
.source "Kodein.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a.\u0010\u0000\u001a\u00060\u0001R\u00020\u0002*\u00020\u00022\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0087\u0008\u00a2\u0006\u0002\u0010\u0007\u001a?\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\n0\t\"\u0004\u0008\u0000\u0010\u000b\"\u0008\u0008\u0001\u0010\n*\u00020\u0004*\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u0002H\n0\u000c2\u000e\u0008\u0004\u0010\r\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\tH\u0086\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "bind",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder$DirectBinder;",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
        "tag",
        "",
        "overrides",
        "",
        "(Lcom/github/salomonbrys/kodein/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$DirectBinder;",
        "toProvider",
        "Lkotlin/Function0;",
        "T",
        "A",
        "Lkotlin/Function1;",
        "arg",
        "kodein-core_main"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method public static final bind(Lcom/github/salomonbrys/kodein/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$DirectBinder;
    .locals 1
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/Kodein$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "overrides"    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->bindDirect(Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$DirectBinder;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic bind$default(Lcom/github/salomonbrys/kodein/Kodein$Builder;Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/github/salomonbrys/kodein/Kodein$Builder$DirectBinder;
    .locals 1
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/Kodein$Builder;
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "overrides"    # Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 445
    const/4 p1, 0x0

    .end local p1    # "tag":Ljava/lang/Object;
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/Boolean;

    :cond_1
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->bindDirect(Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$DirectBinder;

    move-result-object v0

    return-object v0
.end method

.method public static final toProvider(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$receiver"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "arg"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1",
            "<-TA;+TT;>;",
            "Lkotlin/jvm/functions/Function0",
            "<+TA;>;)",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    new-instance v0, Lcom/github/salomonbrys/kodein/KodeinKt$toProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/github/salomonbrys/kodein/KodeinKt$toProvider$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    return-object v0
.end method
