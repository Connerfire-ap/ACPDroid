.class public final Lcom/github/salomonbrys/kodein/InjectedPropertyKt;
.super Ljava/lang/Object;
.source "InjectedProperty.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001aE\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0004*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00020\u00060\u00052\u000e\u0008\u0004\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u0008H\u0086\u0008\u001aI\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0004*\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u00060\u00052\u000e\u0008\u0004\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u0008H\u0086\u0008\u001aK\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00080\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0004*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00020\u00060\u00052\u000e\u0008\u0004\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u0008H\u0086\u0008\u001aO\u0010\u000b\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u00080\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0004*\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u00060\u00052\u000e\u0008\u0004\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u0008H\u0086\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "toInstance",
        "Lkotlin/Lazy;",
        "T",
        "A",
        "",
        "Lcom/github/salomonbrys/kodein/InjectedProperty;",
        "Lkotlin/Function1;",
        "arg",
        "Lkotlin/Function0;",
        "toInstanceOrNull",
        "toProvider",
        "toProviderOrNull",
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
.method public static final toInstance(Lcom/github/salomonbrys/kodein/InjectedProperty;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 1
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/InjectedProperty;
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
            "Lcom/github/salomonbrys/kodein/InjectedProperty",
            "<+",
            "Lkotlin/jvm/functions/Function1",
            "<-TA;+TT;>;>;",
            "Lkotlin/jvm/functions/Function0",
            "<+TA;>;)",
            "Lkotlin/Lazy",
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

    .line 189
    new-instance v0, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toInstance$1;

    invoke-direct {v0, p0, p1}, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toInstance$1;-><init>(Lcom/github/salomonbrys/kodein/InjectedProperty;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public static final toInstanceOrNull(Lcom/github/salomonbrys/kodein/InjectedProperty;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 1
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/InjectedProperty;
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
            "Lcom/github/salomonbrys/kodein/InjectedProperty",
            "<+",
            "Lkotlin/jvm/functions/Function1",
            "<-TA;+TT;>;>;",
            "Lkotlin/jvm/functions/Function0",
            "<+TA;>;)",
            "Lkotlin/Lazy",
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

    .line 200
    new-instance v0, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toInstanceOrNull$1;

    invoke-direct {v0, p0, p1}, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toInstanceOrNull$1;-><init>(Lcom/github/salomonbrys/kodein/InjectedProperty;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 203
    return-object v0
.end method

.method public static final toProvider(Lcom/github/salomonbrys/kodein/InjectedProperty;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 1
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/InjectedProperty;
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
            "Lcom/github/salomonbrys/kodein/InjectedProperty",
            "<+",
            "Lkotlin/jvm/functions/Function1",
            "<-TA;+TT;>;>;",
            "Lkotlin/jvm/functions/Function0",
            "<+TA;>;)",
            "Lkotlin/Lazy",
            "<",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    new-instance v0, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toProvider$1;-><init>(Lcom/github/salomonbrys/kodein/InjectedProperty;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public static final toProviderOrNull(Lcom/github/salomonbrys/kodein/InjectedProperty;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 1
    .param p0, "$receiver"    # Lcom/github/salomonbrys/kodein/InjectedProperty;
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
            "Lcom/github/salomonbrys/kodein/InjectedProperty",
            "<+",
            "Lkotlin/jvm/functions/Function1",
            "<-TA;+TT;>;>;",
            "Lkotlin/jvm/functions/Function0",
            "<+TA;>;)",
            "Lkotlin/Lazy",
            "<",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toProviderOrNull$1;

    invoke-direct {v0, p0, p1}, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toProviderOrNull$1;-><init>(Lcom/github/salomonbrys/kodein/InjectedProperty;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 178
    return-object v0
.end method
