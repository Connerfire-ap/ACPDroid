.class public abstract Lcom/github/salomonbrys/kodein/InjectedProperty;
.super Ljava/lang/Object;
.source "InjectedProperty.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Lkotlin/properties/ReadOnlyProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lkotlin/properties/ReadOnlyProperty",
        "<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u00022\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u0002H\u00010\u0003B\u0017\u0008\u0000\u0012\u000e\u0010\u0005\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0006\u00a2\u0006\u0002\u0010\u0007J\u0015\u0010\u0013\u001a\u00028\u00002\u0006\u0010\u0014\u001a\u00020\u0015H$\u00a2\u0006\u0002\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0014\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008\u0019J$\u0010\u0011\u001a\u00028\u00002\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00042\n\u0010\u001b\u001a\u0006\u0012\u0002\u0008\u00030\u001cH\u0096\u0002\u00a2\u0006\u0002\u0010\u001dJ\u0006\u0010\u001e\u001a\u00020\u001fJ\u0008\u0010 \u001a\u00020\nH\u0016R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\nX\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0005\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00028\u00008G\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006!"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/InjectedProperty;",
        "T",
        "Ljava/io/Serializable;",
        "Lkotlin/properties/ReadOnlyProperty;",
        "",
        "key",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "(Lcom/github/salomonbrys/kodein/Kodein$Key;)V",
        "_lock",
        "_type",
        "",
        "get_type",
        "()Ljava/lang/String;",
        "_value",
        "getKey",
        "()Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "value",
        "getValue",
        "()Ljava/lang/Object;",
        "_getInjection",
        "container",
        "Lcom/github/salomonbrys/kodein/KodeinContainer;",
        "(Lcom/github/salomonbrys/kodein/KodeinContainer;)Ljava/lang/Object;",
        "_inject",
        "",
        "_inject$kodein_core_main",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
        "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;",
        "isInjected",
        "",
        "toString",
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
.field private final _lock:Ljava/lang/Object;

.field private volatile _value:Ljava/lang/Object;

.field private final key:Lcom/github/salomonbrys/kodein/Kodein$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/Kodein$Key;)V
    .locals 1
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/InjectedProperty;->key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    .line 22
    sget-object v0, Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;->INSTANCE:Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/InjectedProperty;->_value:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/InjectedProperty;->_lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract _getInjection(Lcom/github/salomonbrys/kodein/KodeinContainer;)Ljava/lang/Object;
    .param p1    # Lcom/github/salomonbrys/kodein/KodeinContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/KodeinContainer;",
            ")TT;"
        }
    .end annotation
.end method

.method public final _inject$kodein_core_main(Lcom/github/salomonbrys/kodein/KodeinContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/github/salomonbrys/kodein/KodeinContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/github/salomonbrys/kodein/InjectedProperty;->_getInjection(Lcom/github/salomonbrys/kodein/KodeinContainer;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/InjectedProperty;->_value:Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public final getKey()Lcom/github/salomonbrys/kodein/Kodein$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/InjectedProperty;->key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/InjectedProperty;->_value:Ljava/lang/Object;

    .line 35
    .local v0, "_v1":Ljava/lang/Object;
    sget-object v2, Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;->INSTANCE:Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;

    if-eq v0, v2, :cond_0

    .line 43
    .end local v0    # "_v1":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 38
    .restart local v0    # "_v1":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/github/salomonbrys/kodein/InjectedProperty;->_lock:Ljava/lang/Object;

    monitor-enter v3

    nop

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/InjectedProperty;->_value:Ljava/lang/Object;

    .line 40
    .local v1, "_v2":Ljava/lang/Object;
    sget-object v2, Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;->INSTANCE:Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_1

    .line 43
    monitor-exit v3

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v2, Lcom/github/salomonbrys/kodein/KodeinInjector$UninjectedException;

    invoke-direct {v2}, Lcom/github/salomonbrys/kodein/KodeinInjector$UninjectedException;-><init>()V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "_v2":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 1
    .param p1, "thisRef"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "property"    # Lkotlin/reflect/KProperty;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/InjectedProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract get_type()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final isInjected()Z
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/InjectedProperty;->_value:Ljava/lang/Object;

    sget-object v1, Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;->INSTANCE:Lcom/github/salomonbrys/kodein/UNINITIALIZED_VALUE;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/InjectedProperty;->isInjected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/InjectedProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uninjected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/InjectedProperty;->get_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/InjectedProperty;->key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
