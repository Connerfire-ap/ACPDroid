.class public final Lcom/github/salomonbrys/kodein/InjectedNullableProviderProperty;
.super Lcom/github/salomonbrys/kodein/InjectedProperty;
.source "InjectedProperty.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/salomonbrys/kodein/InjectedProperty",
        "<",
        "Lkotlin/jvm/functions/Function0",
        "<+TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0001*\u00020\u00022\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u0002H\u0001\u0018\u00010\u00040\u0003B\u0013\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\u000c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0015R\u0014\u0010\u0008\u001a\u00020\tX\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/InjectedNullableProviderProperty;",
        "T",
        "",
        "Lcom/github/salomonbrys/kodein/InjectedProperty;",
        "Lkotlin/Function0;",
        "bind",
        "Lcom/github/salomonbrys/kodein/Kodein$Bind;",
        "(Lcom/github/salomonbrys/kodein/Kodein$Bind;)V",
        "_type",
        "",
        "get_type",
        "()Ljava/lang/String;",
        "_getInjection",
        "container",
        "Lcom/github/salomonbrys/kodein/KodeinContainer;",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field private final _type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;)V
    .locals 2
    .param p1, "bind"    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-static {}, Lcom/github/salomonbrys/kodein/TypeTokenKt;->getUnitToken()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/github/salomonbrys/kodein/Kodein$Key;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lcom/github/salomonbrys/kodein/TypeToken;)V

    invoke-direct {p0, v0}, Lcom/github/salomonbrys/kodein/InjectedProperty;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Key;)V

    .line 128
    const-string v0, "provider"

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/InjectedNullableProviderProperty;->_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic _getInjection(Lcom/github/salomonbrys/kodein/KodeinContainer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/github/salomonbrys/kodein/InjectedNullableProviderProperty;->_getInjection(Lcom/github/salomonbrys/kodein/KodeinContainer;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method protected _getInjection(Lcom/github/salomonbrys/kodein/KodeinContainer;)Lkotlin/jvm/functions/Function0;
    .locals 2
    .param p1, "container"    # Lcom/github/salomonbrys/kodein/KodeinContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/KodeinContainer;",
            ")",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/InjectedNullableProviderProperty;->getKey()Lcom/github/salomonbrys/kodein/Kodein$Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getBind()Lcom/github/salomonbrys/kodein/Kodein$Bind;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/github/salomonbrys/kodein/KodeinContainer;->providerOrNull(Lcom/github/salomonbrys/kodein/Kodein$Bind;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method protected get_type()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/InjectedNullableProviderProperty;->_type:Ljava/lang/String;

    return-object v0
.end method
