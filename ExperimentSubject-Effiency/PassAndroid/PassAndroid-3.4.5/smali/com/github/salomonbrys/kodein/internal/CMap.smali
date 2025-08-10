.class public final Lcom/github/salomonbrys/kodein/internal/CMap;
.super Ljava/lang/Object;
.source "CMap.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/salomonbrys/kodein/internal/CMap$ImmutableMapView;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0019\u0010\u0013\u001a\u00020\u00142\u000e\u0010\u0015\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0005H\u0086\u0006J#\u0010\u0016\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u00062\u000e\u0010\u0015\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0005H\u0086\u0002J(\u0010\u0017\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u00062\u000e\u0010\u0015\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00052\u0006\u0010\u0018\u001a\u00020\u0019J*\u0010\u001a\u001a\u00020\u001b2\"\u0010\u000c\u001a\u001e\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0005\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00060\rJ)\u0010\u001c\u001a\u00020\u001b2\u000e\u0010\u0015\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00052\u000e\u0010\u001d\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0006H\u0086\u0002RJ\u0010\u0003\u001a>\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0005\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00060\u0004j\u001e\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0005\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000Rz\u0010\u0008\u001an\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0005\u0012$\u0012\"\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00060\tj\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0006`\n0\u0004j6\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0005\u0012$\u0012\"\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00060\tj\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0006`\n`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000RJ\u0010\u000b\u001a>\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0005\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00060\u0004j\u001e\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0005\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R-\u0010\u000c\u001a\u001e\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0005\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00060\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR3\u0010\u0010\u001a$\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0005\u0012\u0012\u0012\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00060\u00110\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/internal/CMap;",
        "",
        "()V",
        "_map",
        "Ljava/util/HashMap;",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "Lcom/github/salomonbrys/kodein/bindings/Binding;",
        "Lkotlin/collections/HashMap;",
        "_overrides",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "_raws",
        "bindings",
        "",
        "getBindings",
        "()Ljava/util/Map;",
        "overrides",
        "",
        "getOverrides",
        "contains",
        "",
        "key",
        "get",
        "getOverride",
        "overrideLevel",
        "",
        "putAll",
        "",
        "set",
        "binding",
        "ImmutableMapView",
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
.field private final _map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final _overrides:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;>;>;"
        }
    .end annotation
.end field

.field private final _raws:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final bindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final overrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Ljava/util/List",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/internal/CMap;->_map:Ljava/util/HashMap;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/internal/CMap;->_overrides:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/internal/CMap;->_raws:Ljava/util/HashMap;

    .line 96
    new-instance v1, Lcom/github/salomonbrys/kodein/internal/CMap$ImmutableMapView;

    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/CMap;->_map:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/github/salomonbrys/kodein/internal/CMap$ImmutableMapView;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/internal/CMap;->bindings:Ljava/util/Map;

    .line 98
    new-instance v1, Lcom/github/salomonbrys/kodein/internal/CMap$ImmutableMapView;

    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/CMap;->_overrides:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/github/salomonbrys/kodein/internal/CMap$ImmutableMapView;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/internal/CMap;->overrides:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final contains(Lcom/github/salomonbrys/kodein/Kodein$Key;)Z
    .locals 2
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/CMap;->_map:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final get(Lcom/github/salomonbrys/kodein/Kodein$Key;)Lcom/github/salomonbrys/kodein/bindings/Binding;
    .locals 2
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;)",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v1, "key"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/internal/CMap;->_map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/salomonbrys/kodein/bindings/Binding;

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/internal/CMap;->_raws:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/salomonbrys/kodein/bindings/Binding;

    if-eqz v0, :cond_1

    .local v0, "it":Lcom/github/salomonbrys/kodein/bindings/Binding;
    goto :goto_0

    .line 37
    .end local v0    # "it":Lcom/github/salomonbrys/kodein/bindings/Binding;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/CMap;->bindings:Ljava/util/Map;

    return-object v0
.end method

.method public final getOverride(Lcom/github/salomonbrys/kodein/Kodein$Key;I)Lcom/github/salomonbrys/kodein/bindings/Binding;
    .locals 4
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "overrideLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;I)",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v3, "key"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v3, p0, Lcom/github/salomonbrys/kodein/internal/CMap;->_overrides:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 42
    .local v0, "it":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, p2

    add-int/lit8 v1, v3, -0x1

    .line 43
    .local v1, "level":I
    if-gez v1, :cond_1

    .line 47
    .end local v0    # "it":Ljava/util/ArrayList;
    .end local v1    # "level":I
    :cond_0
    :goto_0
    return-object v2

    .line 45
    .restart local v0    # "it":Ljava/util/ArrayList;
    .restart local v1    # "level":I
    :cond_1
    check-cast v0, Ljava/util/List;

    .end local v0    # "it":Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/salomonbrys/kodein/bindings/Binding;

    goto :goto_0
.end method

.method public final getOverrides()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Ljava/util/List",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/CMap;->overrides:Ljava/util/Map;

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 4
    .param p1, "bindings"    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;+",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    const-string v2, "bindings"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/Kodein$Key;

    .local v1, "key":Lcom/github/salomonbrys/kodein/Kodein$Key;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/salomonbrys/kodein/bindings/Binding;

    .line 85
    .local v0, "factory":Lcom/github/salomonbrys/kodein/bindings/Binding;
    invoke-virtual {p0, v1, v0}, Lcom/github/salomonbrys/kodein/internal/CMap;->set(Lcom/github/salomonbrys/kodein/Kodein$Key;Lcom/github/salomonbrys/kodein/bindings/Binding;)V

    goto :goto_0

    .line 86
    .end local v0    # "factory":Lcom/github/salomonbrys/kodein/bindings/Binding;
    .end local v1    # "key":Lcom/github/salomonbrys/kodein/Kodein$Key;
    :cond_0
    return-void
.end method

.method public final set(Lcom/github/salomonbrys/kodein/Kodein$Key;Lcom/github/salomonbrys/kodein/bindings/Binding;)V
    .locals 8
    .param p1, "key"    # Lcom/github/salomonbrys/kodein/Kodein$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "binding"    # Lcom/github/salomonbrys/kodein/bindings/Binding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<**>;",
            "Lcom/github/salomonbrys/kodein/bindings/Binding",
            "<**>;)V"
        }
    .end annotation

    .prologue
    const-string v4, "key"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "binding"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v4, p0, Lcom/github/salomonbrys/kodein/internal/CMap;->_map:Ljava/util/HashMap;

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/salomonbrys/kodein/bindings/Binding;

    .line 71
    .local v2, "overridden":Lcom/github/salomonbrys/kodein/bindings/Binding;
    if-eqz v2, :cond_0

    .line 72
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/internal/CMap;->_overrides:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    .line 100
    .local v0, "$receiver$iv":Ljava/util/Map;
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 101
    .local v3, "value$iv":Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 102
    nop

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v1, "answer$iv":Ljava/util/ArrayList;
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    .line 101
    .end local v1    # "answer$iv":Ljava/util/ArrayList;
    :goto_0
    check-cast v4, Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v0    # "$receiver$iv":Ljava/util/Map;
    .end local v3    # "value$iv":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getArgType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v4

    invoke-interface {v4}, Lcom/github/salomonbrys/kodein/TypeToken;->isWildcard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    iget-object v4, p0, Lcom/github/salomonbrys/kodein/internal/CMap;->_raws:Ljava/util/HashMap;

    check-cast v4, Ljava/util/Map;

    new-instance v5, Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getBind()Lcom/github/salomonbrys/kodein/Kodein$Bind;

    move-result-object v6

    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/Kodein$Key;->getArgType()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v7

    invoke-interface {v7}, Lcom/github/salomonbrys/kodein/TypeToken;->getRaw()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/github/salomonbrys/kodein/Kodein$Key;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lcom/github/salomonbrys/kodein/TypeToken;)V

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_1
    return-void

    .restart local v0    # "$receiver$iv":Ljava/util/Map;
    .restart local v3    # "value$iv":Ljava/lang/Object;
    :cond_2
    move-object v4, v3

    .line 106
    goto :goto_0
.end method
