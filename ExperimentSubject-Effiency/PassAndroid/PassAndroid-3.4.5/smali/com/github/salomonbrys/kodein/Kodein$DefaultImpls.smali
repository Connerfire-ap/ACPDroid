.class public final Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;
.super Ljava/lang/Object;
.source "Kodein.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/Kodein;
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
.method public static Factory(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 3
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/Kodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "argType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TA;>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-interface {p0}, Lcom/github/salomonbrys/kodein/Kodein;->getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer;

    move-result-object v0

    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Key;

    new-instance v2, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-direct {v2, p2, p3}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    invoke-direct {v1, v2, p1}, Lcom/github/salomonbrys/kodein/Kodein$Key;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lcom/github/salomonbrys/kodein/TypeToken;)V

    invoke-interface {v0, v1}, Lcom/github/salomonbrys/kodein/KodeinContainer;->nonNullFactory(Lcom/github/salomonbrys/kodein/Kodein$Key;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic Factory$default(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: Factory"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_1

    .line 348
    const/4 p3, 0x0

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/Kodein;->Factory(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public static FactoryOrNull(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 3
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/Kodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "argType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TA;>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-interface {p0}, Lcom/github/salomonbrys/kodein/Kodein;->getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer;

    move-result-object v0

    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Key;

    new-instance v2, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-direct {v2, p2, p3}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    invoke-direct {v1, v2, p1}, Lcom/github/salomonbrys/kodein/Kodein$Key;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lcom/github/salomonbrys/kodein/TypeToken;)V

    invoke-interface {v0, v1}, Lcom/github/salomonbrys/kodein/KodeinContainer;->factoryOrNull(Lcom/github/salomonbrys/kodein/Kodein$Key;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic FactoryOrNull$default(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: FactoryOrNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_1

    .line 361
    const/4 p3, 0x0

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/Kodein;->FactoryOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public static Instance(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/Kodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    invoke-interface {p0}, Lcom/github/salomonbrys/kodein/Kodein;->getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer;

    move-result-object v0

    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-direct {v1, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/github/salomonbrys/kodein/KodeinContainer;->nonNullProvider(Lcom/github/salomonbrys/kodein/Kodein$Bind;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic Instance$default(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: Instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 396
    const/4 p2, 0x0

    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static InstanceOrNull(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/Kodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-interface {p0}, Lcom/github/salomonbrys/kodein/Kodein;->getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer;

    move-result-object v0

    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-direct {v1, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/github/salomonbrys/kodein/KodeinContainer;->providerOrNull(Lcom/github/salomonbrys/kodein/Kodein$Bind;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bridge synthetic InstanceOrNull$default(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: InstanceOrNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 406
    const/4 p2, 0x0

    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein;->InstanceOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static Provider(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 2
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/Kodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    invoke-interface {p0}, Lcom/github/salomonbrys/kodein/Kodein;->getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer;

    move-result-object v0

    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-direct {v1, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/github/salomonbrys/kodein/KodeinContainer;->nonNullProvider(Lcom/github/salomonbrys/kodein/Kodein$Bind;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic Provider$default(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: Provider"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 373
    const/4 p2, 0x0

    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein;->Provider(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public static ProviderOrNull(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 2
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/Kodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    invoke-interface {p0}, Lcom/github/salomonbrys/kodein/Kodein;->getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer;

    move-result-object v0

    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-direct {v1, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/github/salomonbrys/kodein/KodeinContainer;->providerOrNull(Lcom/github/salomonbrys/kodein/Kodein$Bind;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic ProviderOrNull$default(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: ProviderOrNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 384
    const/4 p2, 0x0

    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein;->ProviderOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public static getKodein(Lcom/github/salomonbrys/kodein/Kodein;)Lcom/github/salomonbrys/kodein/Kodein;
    .locals 0
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/Kodein;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 48
    return-object p0
.end method
