.class public final Lcom/github/salomonbrys/kodein/InjectedNullableFactoryProperty;
.super Lcom/github/salomonbrys/kodein/InjectedProperty;
.source "InjectedProperty.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/salomonbrys/kodein/InjectedProperty",
        "<",
        "Lkotlin/jvm/functions/Function1",
        "<-TA;+TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u0000*\n\u0008\u0001\u0010\u0002 \u0001*\u00020\u00032\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u00050\u0004B\u0019\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u001e\u0010\r\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00052\u0006\u0010\u000e\u001a\u00020\u000fH\u0015R\u0014\u0010\t\u001a\u00020\nX\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/InjectedNullableFactoryProperty;",
        "A",
        "T",
        "",
        "Lcom/github/salomonbrys/kodein/InjectedProperty;",
        "Lkotlin/Function1;",
        "key",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "(Lcom/github/salomonbrys/kodein/Kodein$Key;)V",
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
.method public constructor <init>(Lcom/github/salomonbrys/kodein/Kodein$Key;)V
    .locals 1
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/github/salomonbrys/kodein/InjectedProperty;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Key;)V

    .line 106
    const-string v0, "factory"

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/InjectedNullableFactoryProperty;->_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic _getInjection(Lcom/github/salomonbrys/kodein/KodeinContainer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/github/salomonbrys/kodein/InjectedNullableFactoryProperty;->_getInjection(Lcom/github/salomonbrys/kodein/KodeinContainer;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method protected _getInjection(Lcom/github/salomonbrys/kodein/KodeinContainer;)Lkotlin/jvm/functions/Function1;
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
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/InjectedNullableFactoryProperty;->getKey()Lcom/github/salomonbrys/kodein/Kodein$Key;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/github/salomonbrys/kodein/KodeinContainer;->factoryOrNull(Lcom/github/salomonbrys/kodein/Kodein$Key;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method protected get_type()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/InjectedNullableFactoryProperty;->_type:Ljava/lang/String;

    return-object v0
.end method
