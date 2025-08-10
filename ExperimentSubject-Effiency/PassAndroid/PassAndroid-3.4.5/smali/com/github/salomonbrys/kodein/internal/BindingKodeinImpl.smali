.class public Lcom/github/salomonbrys/kodein/internal/BindingKodeinImpl;
.super Lcom/github/salomonbrys/kodein/internal/KodeinImpl;
.source "KodeinImpl.kt"

# interfaces
.implements Lcom/github/salomonbrys/kodein/bindings/BindingKodein;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0011\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0016\u0010\n\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0012\u0004\u0012\u00020\u000c0\u000bH\u0016J\u0018\u0010\r\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bH\u0016R\u0016\u0010\u0005\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/internal/BindingKodeinImpl;",
        "Lcom/github/salomonbrys/kodein/internal/KodeinImpl;",
        "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
        "container",
        "Lcom/github/salomonbrys/kodein/KodeinContainer;",
        "_key",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "_overrideLevel",
        "",
        "(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Key;I)V",
        "overriddenFactory",
        "Lkotlin/Function1;",
        "",
        "overriddenFactoryOrNull",
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
.field private final _key:Lcom/github/salomonbrys/kodein/Kodein$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;"
        }
    .end annotation
.end field

.field private final _overrideLevel:I


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/KodeinContainer;Lcom/github/salomonbrys/kodein/Kodein$Key;I)V
    .locals 1
    .param p1, "container"    # Lcom/github/salomonbrys/kodein/KodeinContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "_key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "_overrideLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/KodeinContainer;",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;I)V"
        }
    .end annotation

    .prologue
    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/github/salomonbrys/kodein/internal/KodeinImpl;-><init>(Lcom/github/salomonbrys/kodein/KodeinContainer;)V

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/internal/BindingKodeinImpl;->_key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    iput p3, p0, Lcom/github/salomonbrys/kodein/internal/BindingKodeinImpl;->_overrideLevel:I

    return-void
.end method


# virtual methods
.method public overriddenFactory()Lkotlin/jvm/functions/Function1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/internal/BindingKodeinImpl;->getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/internal/BindingKodeinImpl;->_key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    iget v2, p0, Lcom/github/salomonbrys/kodein/internal/BindingKodeinImpl;->_overrideLevel:I

    invoke-interface {v0, v1, v2}, Lcom/github/salomonbrys/kodein/KodeinContainer;->overriddenNonNullFactory(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public overriddenFactoryOrNull()Lkotlin/jvm/functions/Function1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/internal/BindingKodeinImpl;->getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/internal/BindingKodeinImpl;->_key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    iget v2, p0, Lcom/github/salomonbrys/kodein/internal/BindingKodeinImpl;->_overrideLevel:I

    invoke-interface {v0, v1, v2}, Lcom/github/salomonbrys/kodein/KodeinContainer;->overriddenFactoryOrNull(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type (kotlin.Any?) -> kotlin.Any"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public overriddenInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/github/salomonbrys/kodein/bindings/BindingKodein$DefaultImpls;->overriddenInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public overriddenInstanceOrNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/github/salomonbrys/kodein/bindings/BindingKodein$DefaultImpls;->overriddenInstanceOrNull(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
