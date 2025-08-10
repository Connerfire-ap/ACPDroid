.class public final Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;
.super Ljava/lang/Object;
.source "userScopes.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000b\u001a\u00020\u000cJ\u0015\u0010\r\u001a\u00020\u000e2\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0086\u0002J(\u0010\u0010\u001a\u0004\u0018\u0001H\u0011\"\u0008\u0008\u0000\u0010\u0011*\u00020\u00012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u0005H\u0086\u0002\u00a2\u0006\u0002\u0010\u0012J3\u0010\u0013\u001a\u0002H\u0011\"\u0008\u0008\u0000\u0010\u0011*\u00020\u00012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u00052\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u0015H\u0007\u00a2\u0006\u0002\u0010\u0016J\u0006\u0010\u0017\u001a\u00020\u000eJ*\u0010\u0018\u001a&\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0004\u0012\u00020\u00010\u0004j\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0004\u0012\u00020\u0001`\u0006J%\u0010\u0019\u001a\u0004\u0018\u0001H\u0011\"\u0008\u0008\u0000\u0010\u0011*\u00020\u00012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u0005\u00a2\u0006\u0002\u0010\u0012R2\u0010\u0003\u001a&\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0004\u0012\u00020\u00010\u0004j\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0004\u0012\u00020\u0001`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;",
        "",
        "()V",
        "_cache",
        "Ljava/util/HashMap;",
        "Lcom/github/salomonbrys/kodein/Kodein$Bind;",
        "Lkotlin/collections/HashMap;",
        "size",
        "",
        "getSize",
        "()I",
        "clear",
        "",
        "contains",
        "",
        "bind",
        "get",
        "T",
        "(Lcom/github/salomonbrys/kodein/Kodein$Bind;)Ljava/lang/Object;",
        "getOrCreate",
        "creator",
        "Lkotlin/Function0;",
        "(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "isEmpty",
        "objects",
        "remove",
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
.field private final _cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    .line 44
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    monitor-enter v1

    nop

    :try_start_0
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final contains(Lcom/github/salomonbrys/kodein/Kodein$Bind;)Z
    .locals 3
    .param p1, "bind"    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    monitor-enter v1

    nop

    :try_start_0
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0
.end method

.method public final get(Lcom/github/salomonbrys/kodein/Kodein$Bind;)Ljava/lang/Object;
    .locals 2
    .param p1, "bind"    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    monitor-enter v1

    nop

    :try_start_0
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getOrCreate(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 6
    .param p1, "bind"    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "creator"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;",
            "Lkotlin/jvm/functions/Function0",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v3, "bind"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "creator"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v3, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 27
    :goto_0
    return-object v3

    .line 26
    :cond_0
    iget-object v4, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    monitor-enter v4

    nop

    .line 27
    :try_start_0
    iget-object v3, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    check-cast v3, Ljava/util/Map;

    move-object v1, p1

    .line 181
    .local v1, "key$iv":Lcom/github/salomonbrys/kodein/Kodein$Bind;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 182
    .local v2, "value$iv":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 183
    nop

    .line 27
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 184
    .local v0, "answer$iv":Ljava/lang/Object;
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 182
    .end local v0    # "answer$iv":Ljava/lang/Object;
    :goto_1
    if-nez v3, :cond_2

    new-instance v3, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type T"

    invoke-direct {v3, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .end local v1    # "key$iv":Lcom/github/salomonbrys/kodein/Kodein$Bind;
    .end local v2    # "value$iv":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "key$iv":Lcom/github/salomonbrys/kodein/Kodein$Bind;
    .restart local v2    # "value$iv":Ljava/lang/Object;
    :cond_1
    move-object v3, v2

    .line 187
    goto :goto_1

    .line 27
    :cond_2
    monitor-exit v4

    goto :goto_0
.end method

.method public final getSize()I
    .locals 2

    .prologue
    .line 62
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    monitor-enter v1

    nop

    :try_start_0
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    monitor-enter v1

    nop

    :try_start_0
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final objects()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    monitor-enter v1

    nop

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final remove(Lcom/github/salomonbrys/kodein/Kodein$Bind;)Ljava/lang/Object;
    .locals 2
    .param p1, "bind"    # Lcom/github/salomonbrys/kodein/Kodein$Bind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/Kodein$Bind",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    monitor-enter v1

    nop

    :try_start_0
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/ScopeRegistry;->_cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
