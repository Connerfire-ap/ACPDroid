.class public interface abstract Lcom/github/salomonbrys/kodein/KodeinContainer;
.super Ljava/lang/Object;
.source "KodeinContainer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/salomonbrys/kodein/KodeinContainer$Builder;,
        Lcom/github/salomonbrys/kodein/KodeinContainer$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001:\u0001 J \u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00042\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J:\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0013\u0018\u00010\u0011\"\u0004\u0008\u0000\u0010\u0012\"\u0008\u0008\u0001\u0010\u0013*\u00020\u00012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u00130\u0004H&J8\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u00130\u0011\"\u0004\u0008\u0000\u0010\u0012\"\u0008\u0008\u0001\u0010\u0013*\u00020\u00012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u00130\u0004H\u0016J&\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u0016\"\u0008\u0008\u0000\u0010\u0013*\u00020\u00012\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u0018H\u0016JB\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0013\u0018\u00010\u0011\"\u0004\u0008\u0000\u0010\u0012\"\u0008\u0008\u0001\u0010\u0013*\u00020\u00012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u00130\u00042\u0006\u0010\u001a\u001a\u00020\u001bH&J@\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u00130\u0011\"\u0004\u0008\u0000\u0010\u0012\"\u0008\u0008\u0001\u0010\u0013*\u00020\u00012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u00130\u00042\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J.\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u0016\"\u0008\u0008\u0000\u0010\u0013*\u00020\u00012\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J0\u0010\u001e\u001a\n\u0012\u0004\u0012\u0002H\u0013\u0018\u00010\u0016\"\u0008\u0008\u0000\u0010\u0013*\u00020\u00012\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J(\u0010\u001f\u001a\n\u0012\u0004\u0012\u0002H\u0013\u0018\u00010\u0016\"\u0008\u0008\u0000\u0010\u0013*\u00020\u00012\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u0018H\u0016R.\u0010\u0002\u001a\u001e\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0004\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00050\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R4\u0010\u0008\u001a$\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0004\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00050\t0\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0007\u00a8\u0006!"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/KodeinContainer;",
        "",
        "bindings",
        "",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "Lcom/github/salomonbrys/kodein/bindings/Binding;",
        "getBindings",
        "()Ljava/util/Map;",
        "overriddenBindings",
        "",
        "getOverriddenBindings",
        "_notFoundException",
        "Lcom/github/salomonbrys/kodein/Kodein$NotFoundException;",
        "key",
        "scope",
        "",
        "factoryOrNull",
        "Lkotlin/Function1;",
        "A",
        "T",
        "nonNullFactory",
        "nonNullProvider",
        "Lkotlin/Function0;",
        "bind",
        "Lcom/github/salomonbrys/kodein/Kodein$Bind;",
        "overriddenFactoryOrNull",
        "overrideLevel",
        "",
        "overriddenNonNullFactory",
        "overriddenNonNullProvider",
        "overriddenProviderOrNull",
        "providerOrNull",
        "Builder",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# virtual methods
.method public abstract factoryOrNull(Lcom/github/salomonbrys/kodein/Kodein$Key;)Lkotlin/jvm/functions/Function1;
    .param p1    # Lcom/github/salomonbrys/kodein/Kodein$Key;
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
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;)",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getBindings()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getOverriddenBindings()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Ljava/util/List",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract nonNullFactory(Lcom/github/salomonbrys/kodein/Kodein$Key;)Lkotlin/jvm/functions/Function1;
    .param p1    # Lcom/github/salomonbrys/kodein/Kodein$Key;
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
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;)",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract nonNullProvider(Lcom/github/salomonbrys/kodein/Kodein$Bind;)Lkotlin/jvm/functions/Function0;
    .param p1    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;)",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract overriddenFactoryOrNull(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Lkotlin/jvm/functions/Function1;
    .param p1    # Lcom/github/salomonbrys/kodein/Kodein$Key;
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
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;I)",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract overriddenNonNullFactory(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Lkotlin/jvm/functions/Function1;
    .param p1    # Lcom/github/salomonbrys/kodein/Kodein$Key;
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
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;I)",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract overriddenNonNullProvider(Lcom/github/salomonbrys/kodein/Kodein$Bind;I)Lkotlin/jvm/functions/Function0;
    .param p1    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;I)",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract overriddenProviderOrNull(Lcom/github/salomonbrys/kodein/Kodein$Bind;I)Lkotlin/jvm/functions/Function0;
    .param p1    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;I)",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract providerOrNull(Lcom/github/salomonbrys/kodein/Kodein$Bind;)Lkotlin/jvm/functions/Function0;
    .param p1    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;)",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
