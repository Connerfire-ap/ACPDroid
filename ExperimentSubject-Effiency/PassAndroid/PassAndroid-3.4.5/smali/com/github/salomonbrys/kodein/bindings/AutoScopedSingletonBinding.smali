.class public final Lcom/github/salomonbrys/kodein/bindings/AutoScopedSingletonBinding;
.super Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;
.source "userScopes.kt"

# interfaces
.implements Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/salomonbrys/kodein/bindings/AScopedBinding",
        "<",
        "Lkotlin/Unit;",
        "TC;TT;>;",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00042\u0008\u0012\u0004\u0012\u0002H\u00020\u0006BB\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00010\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\u0012\u001d\u0010\u000b\u001a\u0019\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000c\u00a2\u0006\u0002\u0008\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J!\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00190\u00182\u0006\u0010\u001a\u001a\u00020\u0005H\u0014\u00a2\u0006\u0002\u0010\u001bJ)\u0010\u001c\u001a\u00028\u00012\u0006\u0010\u001d\u001a\u00020\r2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00010\u001fH\u0016\u00a2\u0006\u0002\u0010 R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012\u00a8\u0006!"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/bindings/AutoScopedSingletonBinding;",
        "C",
        "T",
        "",
        "Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;",
        "",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;",
        "createdType",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "_scope",
        "Lcom/github/salomonbrys/kodein/bindings/AutoScope;",
        "creator",
        "Lkotlin/Function2;",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/bindings/AutoScope;Lkotlin/jvm/functions/Function2;)V",
        "argType",
        "getArgType",
        "()Lcom/github/salomonbrys/kodein/TypeToken;",
        "getCreatedType",
        "factoryFullName",
        "",
        "factoryName",
        "getContextAndRegistry",
        "Lkotlin/Pair;",
        "Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;",
        "arg",
        "(Lkotlin/Unit;)Lkotlin/Pair;",
        "getInstance",
        "kodein",
        "key",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;)Ljava/lang/Object;",
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
.field private final _scope:Lcom/github/salomonbrys/kodein/bindings/AutoScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/bindings/AutoScope",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final createdType:Lcom/github/salomonbrys/kodein/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/bindings/AutoScope;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "createdType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "_scope"    # Lcom/github/salomonbrys/kodein/bindings/AutoScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "creator"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TT;>;",
            "Lcom/github/salomonbrys/kodein/bindings/AutoScope",
            "<TC;>;",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
            "-TC;+TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "createdType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, p3}, Lcom/github/salomonbrys/kodein/bindings/AScopedBinding;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/bindings/AutoScopedSingletonBinding;->createdType:Lcom/github/salomonbrys/kodein/TypeToken;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/bindings/AutoScopedSingletonBinding;->_scope:Lcom/github/salomonbrys/kodein/bindings/AutoScope;

    return-void
.end method


# virtual methods
.method public factoryFullName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoScopedSingleton("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/AutoScopedSingletonBinding;->_scope:Lcom/github/salomonbrys/kodein/bindings/AutoScope;

    invoke-static {v1}, Lcom/github/salomonbrys/kodein/TypesKt;->TTOf(Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/TypeToken;->fullDispString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public factoryName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoScopedSingleton("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/AutoScopedSingletonBinding;->_scope:Lcom/github/salomonbrys/kodein/bindings/AutoScope;

    invoke-static {v1}, Lcom/github/salomonbrys/kodein/TypesKt;->TTOf(Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/TypeToken;->simpleDispString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArgType()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lcom/github/salomonbrys/kodein/TypeTokenKt;->getUnitToken()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContextAndRegistry(Ljava/lang/Object;)Lkotlin/Pair;
    .locals 1

    .prologue
    .line 168
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/github/salomonbrys/kodein/bindings/AutoScopedSingletonBinding;->getContextAndRegistry(Lkotlin/Unit;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected getContextAndRegistry(Lkotlin/Unit;)Lkotlin/Pair;
    .locals 2
    .param p1, "arg"    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            ")",
            "Lkotlin/Pair",
            "<TC;",
            "Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "arg"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/AutoScopedSingletonBinding;->_scope:Lcom/github/salomonbrys/kodein/bindings/AutoScope;

    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/bindings/AutoScope;->getContext()Ljava/lang/Object;

    move-result-object v0

    .local v0, "it":Ljava/lang/Object;
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/AutoScopedSingletonBinding;->_scope:Lcom/github/salomonbrys/kodein/bindings/AutoScope;

    invoke-interface {v1, v0}, Lcom/github/salomonbrys/kodein/bindings/AutoScope;->getRegistry(Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    return-object v1
.end method

.method public getCreatedType()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/AutoScopedSingletonBinding;->createdType:Lcom/github/salomonbrys/kodein/TypeToken;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 168
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->getDescription(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 168
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->getFullDescription(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    check-cast p3, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/bindings/AutoScopedSingletonBinding;->getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/Unit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/Unit;)Ljava/lang/Object;
    .locals 1
    .param p1, "kodein"    # Lcom/github/salomonbrys/kodein/bindings/BindingKodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "arg"    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 168
    invoke-static {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->getInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/Unit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;)Ljava/lang/Object;
    .locals 1
    .param p1, "kodein"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<",
            "Lkotlin/Unit;",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "kodein"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/salomonbrys/kodein/bindings/AutoScopedSingletonBinding;->getScopedInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
