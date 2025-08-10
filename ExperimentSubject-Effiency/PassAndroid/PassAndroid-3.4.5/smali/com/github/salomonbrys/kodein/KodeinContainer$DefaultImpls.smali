.class public final Lcom/github/salomonbrys/kodein/KodeinContainer$DefaultImpls;
.super Ljava/lang/Object;
.source "KodeinContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/KodeinContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method private static _notFoundException(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/String;)Lcom/github/salomonbrys/kodein/Kodein$NotFoundException;
    .locals 4
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/KodeinContainer;
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
    .param p2, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/KodeinContainer;",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/salomonbrys/kodein/Kodein$NotFoundException;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lcom/github/salomonbrys/kodein/Kodein$NotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Registered in Kodein:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/github/salomonbrys/kodein/KodeinContainer;->getBindings()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/github/salomonbrys/kodein/ReflectKt;->getDescription(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/github/salomonbrys/kodein/Kodein$NotFoundException;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static nonNullFactory(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Key;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/KodeinContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/KodeinContainer;",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;)",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p0, p1}, Lcom/github/salomonbrys/kodein/KodeinContainer;->factoryOrNull(Lcom/github/salomonbrys/kodein/Kodein$Key;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "factory"

    invoke-static {p0, p1, v0}, Lcom/github/salomonbrys/kodein/KodeinContainer$DefaultImpls;->_notFoundException(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/String;)Lcom/github/salomonbrys/kodein/Kodein$NotFoundException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static nonNullProvider(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Bind;)Lkotlin/jvm/functions/Function0;
    .locals 2
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/KodeinContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "bind"    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/KodeinContainer;",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;)",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-interface {p0, p1}, Lcom/github/salomonbrys/kodein/KodeinContainer;->providerOrNull(Lcom/github/salomonbrys/kodein/Kodein$Bind;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-static {}, Lcom/github/salomonbrys/kodein/TypeTokenKt;->getUnitToken()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/github/salomonbrys/kodein/Kodein$Key;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lcom/github/salomonbrys/kodein/TypeToken;)V

    const-string v1, "provider"

    invoke-static {p0, v0, v1}, Lcom/github/salomonbrys/kodein/KodeinContainer$DefaultImpls;->_notFoundException(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/String;)Lcom/github/salomonbrys/kodein/Kodein$NotFoundException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static overriddenNonNullFactory(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Key;I)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/KodeinContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
    .param p2, "overrideLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/KodeinContainer;",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;I)",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-interface {p0, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinContainer;->overriddenFactoryOrNull(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "overridden factory"

    invoke-static {p0, p1, v0}, Lcom/github/salomonbrys/kodein/KodeinContainer$DefaultImpls;->_notFoundException(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/String;)Lcom/github/salomonbrys/kodein/Kodein$NotFoundException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static overriddenNonNullProvider(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Bind;I)Lkotlin/jvm/functions/Function0;
    .locals 2
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/KodeinContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "bind"    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
    .param p2, "overrideLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/KodeinContainer;",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;I)",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-interface {p0, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinContainer;->overriddenProviderOrNull(Lcom/github/salomonbrys/kodein/Kodein$Bind;I)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-static {}, Lcom/github/salomonbrys/kodein/TypeTokenKt;->getUnitToken()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/github/salomonbrys/kodein/Kodein$Key;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lcom/github/salomonbrys/kodein/TypeToken;)V

    const-string v1, "overridden provider"

    invoke-static {p0, v0, v1}, Lcom/github/salomonbrys/kodein/KodeinContainer$DefaultImpls;->_notFoundException(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/String;)Lcom/github/salomonbrys/kodein/Kodein$NotFoundException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static overriddenProviderOrNull(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Bind;I)Lkotlin/jvm/functions/Function0;
    .locals 3
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/KodeinContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "bind"    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
    .param p2, "overrideLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/KodeinContainer;",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;I)",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v1, "bind"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-static {}, Lcom/github/salomonbrys/kodein/TypeTokenKt;->getUnitToken()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/github/salomonbrys/kodein/Kodein$Key;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lcom/github/salomonbrys/kodein/TypeToken;)V

    invoke-interface {p0, v1, p2}, Lcom/github/salomonbrys/kodein/KodeinContainer;->overriddenFactoryOrNull(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    .local v0, "factory":Lkotlin/jvm/functions/Function1;
    new-instance v1, Lcom/github/salomonbrys/kodein/KodeinContainer$overriddenProviderOrNull$1;

    invoke-direct {v1, v0}, Lcom/github/salomonbrys/kodein/KodeinContainer$overriddenProviderOrNull$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .end local v0    # "factory":Lkotlin/jvm/functions/Function1;
    :goto_0
    return-object v1

    .line 112
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static providerOrNull(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Bind;)Lkotlin/jvm/functions/Function0;
    .locals 3
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/KodeinContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "bind"    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/KodeinContainer;",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;)",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v1, "bind"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-static {}, Lcom/github/salomonbrys/kodein/TypeTokenKt;->getUnitToken()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/github/salomonbrys/kodein/Kodein$Key;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lcom/github/salomonbrys/kodein/TypeToken;)V

    invoke-interface {p0, v1}, Lcom/github/salomonbrys/kodein/KodeinContainer;->factoryOrNull(Lcom/github/salomonbrys/kodein/Kodein$Key;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    .local v0, "factory":Lkotlin/jvm/functions/Function1;
    new-instance v1, Lcom/github/salomonbrys/kodein/KodeinContainer$providerOrNull$1;

    invoke-direct {v1, v0}, Lcom/github/salomonbrys/kodein/KodeinContainer$providerOrNull$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .end local v0    # "factory":Lkotlin/jvm/functions/Function1;
    :goto_0
    return-object v1

    .line 62
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
