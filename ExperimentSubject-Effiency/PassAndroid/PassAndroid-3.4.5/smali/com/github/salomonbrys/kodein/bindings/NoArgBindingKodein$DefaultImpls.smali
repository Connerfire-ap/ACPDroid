.class public final Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein$DefaultImpls;
.super Ljava/lang/Object;
.source "Binding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
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
.method public static Factory(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
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
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
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

    check-cast p0, Lcom/github/salomonbrys/kodein/Kodein;

    .end local p0    # "$this":Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
    invoke-static {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;->Factory(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public static FactoryOrNull(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
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
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
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

    check-cast p0, Lcom/github/salomonbrys/kodein/Kodein;

    .end local p0    # "$this":Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
    invoke-static {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;->FactoryOrNull(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public static Instance(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
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
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
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

    check-cast p0, Lcom/github/salomonbrys/kodein/Kodein;

    .end local p0    # "$this":Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
    invoke-static {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;->Instance(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static InstanceOrNull(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
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
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
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

    check-cast p0, Lcom/github/salomonbrys/kodein/Kodein;

    .end local p0    # "$this":Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
    invoke-static {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;->InstanceOrNull(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static Provider(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
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
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
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

    check-cast p0, Lcom/github/salomonbrys/kodein/Kodein;

    .end local p0    # "$this":Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
    invoke-static {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;->Provider(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public static ProviderOrNull(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
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
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
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

    check-cast p0, Lcom/github/salomonbrys/kodein/Kodein;

    .end local p0    # "$this":Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
    invoke-static {p0, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;->ProviderOrNull(Lcom/github/salomonbrys/kodein/Kodein;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public static getKodein(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;)Lcom/github/salomonbrys/kodein/Kodein;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    check-cast p0, Lcom/github/salomonbrys/kodein/Kodein;

    .end local p0    # "$this":Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/Kodein$DefaultImpls;->getKodein(Lcom/github/salomonbrys/kodein/Kodein;)Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v0

    return-object v0
.end method
