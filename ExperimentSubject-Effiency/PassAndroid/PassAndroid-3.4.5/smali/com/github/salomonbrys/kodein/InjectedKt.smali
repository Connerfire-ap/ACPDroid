.class public final Lcom/github/salomonbrys/kodein/InjectedKt;
.super Ljava/lang/Object;
.source "Injected.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u001a8\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0006\u0012\u0002\u0008\u00030\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u001a:\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0006\u0012\u0002\u0008\u00030\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u001a@\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\n0\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0006\u0012\u0002\u0008\u00030\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u0007\u001a@\u0010\u000b\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\n0\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0006\u0012\u0002\u0008\u00030\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u001a1\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0004\"\u0004\u0008\u0000\u0010\r*\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u00062\u0006\u0010\u0010\u001a\u0002H\r\u00a2\u0006\u0002\u0010\u0011\u001a2\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u0004\"\u0004\u0008\u0000\u0010\r*\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\r0\u00062\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\r0\n\u001a\u0010\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0001*\u00020\u000e\u00a8\u0006\u0015"
    }
    d2 = {
        "Instance",
        "Lkotlin/Lazy;",
        "T",
        "",
        "Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;",
        "type",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "tag",
        "InstanceOrNull",
        "Provider",
        "Lkotlin/Function0;",
        "ProviderOrNull",
        "With",
        "A",
        "Lcom/github/salomonbrys/kodein/KodeinInjectedBase;",
        "argType",
        "arg",
        "(Lcom/github/salomonbrys/kodein/KodeinInjectedBase;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;",
        "WithF",
        "kodein",
        "Lcom/github/salomonbrys/kodein/Kodein;",
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
.method public static final Instance(Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/Lazy;
    .locals 3
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/CurriedInjectorFactory",
            "<*>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Lazy",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->getInjector()Lcom/github/salomonbrys/kodein/KodeinInjector;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->getArgType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinInjector;->Factory(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->getArg()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    .line 146
    .local v0, "arg$iv":Lkotlin/jvm/functions/Function0;
    new-instance v1, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toInstance$1;

    invoke-direct {v1, v2, v0}, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toInstance$1;-><init>(Lcom/github/salomonbrys/kodein/InjectedProperty;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 100
    return-object v1
.end method

.method public static bridge synthetic Instance$default(Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 100
    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/github/salomonbrys/kodein/InjectedKt;->Instance(Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public static final InstanceOrNull(Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/Lazy;
    .locals 3
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/CurriedInjectorFactory",
            "<*>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Lazy",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->getInjector()Lcom/github/salomonbrys/kodein/KodeinInjector;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->getArgType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinInjector;->FactoryOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->getArg()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    .line 147
    .local v0, "arg$iv":Lkotlin/jvm/functions/Function0;
    new-instance v1, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toInstanceOrNull$1;

    invoke-direct {v1, v2, v0}, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toInstanceOrNull$1;-><init>(Lcom/github/salomonbrys/kodein/InjectedProperty;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 150
    return-object v1
.end method

.method public static bridge synthetic InstanceOrNull$default(Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 112
    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/github/salomonbrys/kodein/InjectedKt;->InstanceOrNull(Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public static final Provider(Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/Lazy;
    .locals 3
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/CurriedInjectorFactory",
            "<*>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Lazy",
            "<",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->getInjector()Lcom/github/salomonbrys/kodein/KodeinInjector;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->getArgType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinInjector;->Factory(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->getArg()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    .line 141
    .local v0, "arg$iv":Lkotlin/jvm/functions/Function0;
    new-instance v1, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toProvider$1;

    invoke-direct {v1, v2, v0}, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toProvider$1;-><init>(Lcom/github/salomonbrys/kodein/InjectedProperty;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 75
    return-object v1
.end method

.method public static bridge synthetic Provider$default(Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 75
    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/github/salomonbrys/kodein/InjectedKt;->Provider(Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public static final ProviderOrNull(Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/Lazy;
    .locals 3
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/CurriedInjectorFactory",
            "<*>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Lazy",
            "<",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "$receiver"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->getInjector()Lcom/github/salomonbrys/kodein/KodeinInjector;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->getArgType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinInjector;->FactoryOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;->getArg()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    .line 142
    .local v0, "arg$iv":Lkotlin/jvm/functions/Function0;
    new-instance v1, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toProviderOrNull$1;

    invoke-direct {v1, v2, v0}, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toProviderOrNull$1;-><init>(Lcom/github/salomonbrys/kodein/InjectedProperty;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 145
    return-object v1
.end method

.method public static bridge synthetic ProviderOrNull$default(Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 88
    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/github/salomonbrys/kodein/InjectedKt;->ProviderOrNull(Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public static final With(Lcom/github/salomonbrys/kodein/KodeinInjectedBase;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;
    .locals 3
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/KodeinInjectedBase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "argType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/KodeinInjectedBase;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TA;>;TA;)",
            "Lcom/github/salomonbrys/kodein/CurriedInjectorFactory",
            "<TA;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;

    invoke-interface {p0}, Lcom/github/salomonbrys/kodein/KodeinInjectedBase;->getInjector()Lcom/github/salomonbrys/kodein/KodeinInjector;

    move-result-object v2

    new-instance v0, Lcom/github/salomonbrys/kodein/InjectedKt$With$1;

    invoke-direct {v0, p2}, Lcom/github/salomonbrys/kodein/InjectedKt$With$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v2, v0, p1}, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;-><init>(Lcom/github/salomonbrys/kodein/KodeinInjector;Lkotlin/jvm/functions/Function0;Lcom/github/salomonbrys/kodein/TypeToken;)V

    return-object v1
.end method

.method public static final WithF(Lcom/github/salomonbrys/kodein/KodeinInjectedBase;Lcom/github/salomonbrys/kodein/TypeToken;Lkotlin/jvm/functions/Function0;)Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;
    .locals 2
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/KodeinInjectedBase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "argType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "arg"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/KodeinInjectedBase;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TA;>;",
            "Lkotlin/jvm/functions/Function0",
            "<+TA;>;)",
            "Lcom/github/salomonbrys/kodein/CurriedInjectorFactory",
            "<TA;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;

    invoke-interface {p0}, Lcom/github/salomonbrys/kodein/KodeinInjectedBase;->getInjector()Lcom/github/salomonbrys/kodein/KodeinInjector;

    move-result-object v1

    invoke-direct {v0, v1, p2, p1}, Lcom/github/salomonbrys/kodein/CurriedInjectorFactory;-><init>(Lcom/github/salomonbrys/kodein/KodeinInjector;Lkotlin/jvm/functions/Function0;Lcom/github/salomonbrys/kodein/TypeToken;)V

    return-object v0
.end method

.method public static final kodein(Lcom/github/salomonbrys/kodein/KodeinInjectedBase;)Lkotlin/Lazy;
    .locals 1
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/KodeinInjectedBase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/KodeinInjectedBase;",
            ")",
            "Lkotlin/Lazy",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p0}, Lcom/github/salomonbrys/kodein/KodeinInjectedBase;->getInjector()Lcom/github/salomonbrys/kodein/KodeinInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/salomonbrys/kodein/KodeinInjector;->kodein()Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method
