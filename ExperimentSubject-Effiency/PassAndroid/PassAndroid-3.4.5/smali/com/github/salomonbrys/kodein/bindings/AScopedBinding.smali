.class public abstract Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;
.super Ljava/lang/Object;
.source "userScopes.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0006\u0008\u0001\u0010\u0002 \u0001*\u0008\u0008\u0002\u0010\u0003*\u00020\u00042\u00020\u0004B&\u0008\u0000\u0012\u001d\u0010\u0005\u001a\u0019\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0006\u00a2\u0006\u0002\u0008\u0008\u00a2\u0006\u0002\u0010\tJ!\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u000c0\u000b2\u0006\u0010\r\u001a\u00028\u0000H$\u00a2\u0006\u0002\u0010\u000eJ1\u0010\u000f\u001a\u00028\u00022\u0006\u0010\u0010\u001a\u00020\u00072\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u00122\u0006\u0010\r\u001a\u00028\u0000H\u0005\u00a2\u0006\u0002\u0010\u0013R%\u0010\u0005\u001a\u0019\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0006\u00a2\u0006\u0002\u0008\u0008X\u0088\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;",
        "A",
        "C",
        "T",
        "",
        "_creator",
        "Lkotlin/Function2;",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function2;)V",
        "getContextAndRegistry",
        "Lkotlin/Pair;",
        "Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;",
        "arg",
        "(Ljava/lang/Object;)Lkotlin/Pair;",
        "getScopedInstance",
        "kodein",
        "key",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)Ljava/lang/Object;",
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
.field private final _creator:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
            "TC;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "_creator"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
            "-TC;+TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "_creator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;->_creator:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$get_creator$p(Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;)Lkotlin/jvm/functions/Function2;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;->_creator:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method


# virtual methods
.method protected abstract getContextAndRegistry(Ljava/lang/Object;)Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lkotlin/Pair",
            "<TC;",
            "Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method protected final getScopedInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "kodein"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;TA;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "kodein"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p3}, Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;->getContextAndRegistry(Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;

    .line 122
    invoke-virtual {p2}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getBind()Lcom/github/salomonbrys/kodein/Kodein$Bind;

    move-result-object v3

    new-instance v1, Lcom/github/salomonbrys/kodein/bindings/AScopedBinding$getScopedInstance$1;

    invoke-direct {v1, p0, p1, v2}, Lcom/github/salomonbrys/kodein/bindings/AScopedBinding$getScopedInstance$1;-><init>(Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v3, v1}, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->getOrCreate(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
