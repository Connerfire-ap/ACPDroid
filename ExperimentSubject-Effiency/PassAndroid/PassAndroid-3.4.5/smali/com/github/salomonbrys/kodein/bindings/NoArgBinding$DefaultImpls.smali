.class public final Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;
.super Ljava/lang/Object;
.source "Binding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;
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
.method public static factoryFullName(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    check-cast p0, Lcom/github/salomonbrys/kodein/bindings/Binding;

    .end local p0    # "$this":Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/Binding$DefaultImpls;->factoryFullName(Lcom/github/salomonbrys/kodein/bindings/Binding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getArgType(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding",
            "<TT;>;)",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 199
    invoke-static {}, Lcom/github/salomonbrys/kodein/TypeTokenKt;->getUnitToken()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public static getDescription(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Ljava/lang/String;
    .locals 2
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;->factoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;->getCreatedType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/TypeToken;->simpleDispString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " } "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullDescription(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Ljava/lang/String;
    .locals 2
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;->factoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;->getCreatedType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/TypeToken;->fullDispString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " } "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/Unit;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "kodein"    # Lcom/github/salomonbrys/kodein/bindings/BindingKodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "arg"    # Lkotlin/Unit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding",
            "<TT;>;",
            "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<",
            "Lkotlin/Unit;",
            "+TT;>;",
            "Lkotlin/Unit;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "kodein"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodeinImpl;

    invoke-direct {v0, p1}, Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodeinImpl;-><init>(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;

    invoke-interface {p0, v0, p2}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;->getInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
