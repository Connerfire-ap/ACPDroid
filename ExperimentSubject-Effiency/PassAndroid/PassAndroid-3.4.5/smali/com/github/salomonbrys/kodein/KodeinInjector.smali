.class public final Lcom/github/salomonbrys/kodein/KodeinInjector;
.super Ljava/lang/Object;
.source "Injector.kt"

# interfaces
.implements Lcom/github/salomonbrys/kodein/KodeinInjectedBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/salomonbrys/kodein/KodeinInjector$UninjectedException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001%B\u0005\u00a2\u0006\u0002\u0010\u0002JT\u0010\u0011\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u00130\u000c0\u0007\"\u0004\u0008\u0000\u0010\u0012\"\u0008\u0008\u0001\u0010\u0013*\u00020\n2\u000e\u0010\u0014\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00120\u00152\u000e\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00130\u00152\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\nJV\u0010\u0018\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0013\u0018\u00010\u000c0\u0007\"\u0004\u0008\u0000\u0010\u0012\"\u0008\u0008\u0001\u0010\u0013*\u00020\n2\u000e\u0010\u0014\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00120\u00152\u000e\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00130\u00152\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\nJ2\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u0007\"\u0008\u0008\u0000\u0010\u0013*\u00020\n2\u000e\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00130\u00152\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\nJ4\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00130\u0007\"\u0008\u0008\u0000\u0010\u0013*\u00020\n2\u000e\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00130\u00152\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\nJ8\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00130\u001c0\u0007\"\u0008\u0008\u0000\u0010\u0013*\u00020\n2\u000e\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00130\u00152\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\nJ:\u0010\u001d\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u0002H\u0013\u0018\u00010\u001c0\u0007\"\u0008\u0008\u0000\u0010\u0013*\u00020\n2\u000e\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00130\u00152\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\nJ\"\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u0007\"\u0004\u0008\u0000\u0010\u00132\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u0007H\u0002J\u0010\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\u0004H\u0016J\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00040\"J\u001c\u0010#\u001a\u00020\r2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r0\u000cH\u0016R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u0005\u001a\u001a\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0006j\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0007`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R6\u0010\u000b\u001a*\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r0\u000c0\u0006j\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r0\u000c`\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u0000X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006&"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/KodeinInjector;",
        "Lcom/github/salomonbrys/kodein/KodeinInjectedBase;",
        "()V",
        "_kodein",
        "Lcom/github/salomonbrys/kodein/Kodein;",
        "_list",
        "Ljava/util/ArrayList;",
        "Lcom/github/salomonbrys/kodein/InjectedProperty;",
        "Lkotlin/collections/ArrayList;",
        "_lock",
        "",
        "_onInjecteds",
        "Lkotlin/Function1;",
        "",
        "injector",
        "getInjector",
        "()Lcom/github/salomonbrys/kodein/KodeinInjector;",
        "Factory",
        "A",
        "T",
        "argType",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "type",
        "tag",
        "FactoryOrNull",
        "Instance",
        "InstanceOrNull",
        "Provider",
        "Lkotlin/Function0;",
        "ProviderOrNull",
        "_register",
        "injected",
        "inject",
        "kodein",
        "Lkotlin/Lazy;",
        "onInjected",
        "cb",
        "UninjectedException",
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
.field private volatile _kodein:Lcom/github/salomonbrys/kodein/Kodein;

.field private final _list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/github/salomonbrys/kodein/InjectedProperty",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final _lock:Ljava/lang/Object;

.field private _onInjecteds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final injector:Lcom/github/salomonbrys/kodein/KodeinInjector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    .line 27
    check-cast v0, Lcom/github/salomonbrys/kodein/KodeinInjector;

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinInjector;->injector:Lcom/github/salomonbrys/kodein/KodeinInjector;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinInjector;->_lock:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinInjector;->_list:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinInjector;->_onInjecteds:Ljava/util/ArrayList;

    return-void
.end method

.method public static bridge synthetic Factory$default(Lcom/github/salomonbrys/kodein/KodeinInjector;Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    .line 85
    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/KodeinInjector;->Factory(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic FactoryOrNull$default(Lcom/github/salomonbrys/kodein/KodeinInjector;Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    .line 99
    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/KodeinInjector;->FactoryOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic Instance$default(Lcom/github/salomonbrys/kodein/KodeinInjector;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 134
    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinInjector;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic InstanceOrNull$default(Lcom/github/salomonbrys/kodein/KodeinInjector;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 145
    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinInjector;->InstanceOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic Provider$default(Lcom/github/salomonbrys/kodein/KodeinInjector;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 111
    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinInjector;->Provider(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic ProviderOrNull$default(Lcom/github/salomonbrys/kodein/KodeinInjector;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;ILjava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 123
    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/github/salomonbrys/kodein/KodeinInjector;->ProviderOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-result-object v0

    return-object v0
.end method

.method private final _register(Lcom/github/salomonbrys/kodein/InjectedProperty;)Lcom/github/salomonbrys/kodein/InjectedProperty;
    .locals 7
    .param p1, "injected"    # Lcom/github/salomonbrys/kodein/InjectedProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/InjectedProperty",
            "<+TT;>;)",
            "Lcom/github/salomonbrys/kodein/InjectedProperty",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v6, p0, Lcom/github/salomonbrys/kodein/KodeinInjector;->_lock:Ljava/lang/Object;

    move-object v5, p0

    .line 183
    check-cast v5, Lcom/github/salomonbrys/kodein/KodeinInjector;

    .line 67
    # getter for: Lcom/github/salomonbrys/kodein/KodeinInjector;->_kodein:Lcom/github/salomonbrys/kodein/Kodein;
    invoke-static {v5}, Lcom/github/salomonbrys/kodein/KodeinInjector;->access$get_kodein$p(Lcom/github/salomonbrys/kodein/KodeinInjector;)Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 184
    .local v3, "it$iv":Lcom/github/salomonbrys/kodein/Kodein;
    move-object v2, v3

    .line 67
    .local v2, "it":Lcom/github/salomonbrys/kodein/Kodein;
    move-object v1, p1

    .local v1, "$receiver":Lcom/github/salomonbrys/kodein/InjectedProperty;
    invoke-interface {v2}, Lcom/github/salomonbrys/kodein/Kodein;->getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/github/salomonbrys/kodein/InjectedProperty;->_inject$kodein_core_main(Lcom/github/salomonbrys/kodein/KodeinContainer;)V

    .line 197
    .end local v1    # "$receiver":Lcom/github/salomonbrys/kodein/InjectedProperty;
    .end local v2    # "it":Lcom/github/salomonbrys/kodein/Kodein;
    .end local v3    # "it$iv":Lcom/github/salomonbrys/kodein/Kodein;
    :cond_0
    :goto_0
    return-object p1

    .line 188
    :cond_1
    monitor-enter v6

    nop

    .line 189
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/github/salomonbrys/kodein/KodeinInjector;

    move-object v5, v0

    .line 67
    # getter for: Lcom/github/salomonbrys/kodein/KodeinInjector;->_kodein:Lcom/github/salomonbrys/kodein/Kodein;
    invoke-static {v5}, Lcom/github/salomonbrys/kodein/KodeinInjector;->access$get_kodein$p(Lcom/github/salomonbrys/kodein/KodeinInjector;)Lcom/github/salomonbrys/kodein/Kodein;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_2

    .restart local v3    # "it$iv":Lcom/github/salomonbrys/kodein/Kodein;
    move-object v4, v3

    .line 188
    .end local v3    # "it$iv":Lcom/github/salomonbrys/kodein/Kodein;
    :goto_1
    monitor-exit v6

    .line 195
    .local v4, "value$iv":Lcom/github/salomonbrys/kodein/Kodein;
    if-eqz v4, :cond_0

    .line 196
    move-object v2, v4

    .line 67
    .restart local v2    # "it":Lcom/github/salomonbrys/kodein/Kodein;
    move-object v1, p1

    .restart local v1    # "$receiver":Lcom/github/salomonbrys/kodein/InjectedProperty;
    invoke-interface {v2}, Lcom/github/salomonbrys/kodein/Kodein;->getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/github/salomonbrys/kodein/InjectedProperty;->_inject$kodein_core_main(Lcom/github/salomonbrys/kodein/KodeinContainer;)V

    goto :goto_0

    .line 191
    .end local v1    # "$receiver":Lcom/github/salomonbrys/kodein/InjectedProperty;
    .end local v2    # "it":Lcom/github/salomonbrys/kodein/Kodein;
    .end local v4    # "value$iv":Lcom/github/salomonbrys/kodein/Kodein;
    :cond_2
    nop

    .line 68
    :try_start_1
    # getter for: Lcom/github/salomonbrys/kodein/KodeinInjector;->_list:Ljava/util/ArrayList;
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/KodeinInjector;->access$get_list$p(Lcom/github/salomonbrys/kodein/KodeinInjector;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    nop

    .line 192
    const/4 v4, 0x0

    goto :goto_1

    .line 188
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static final synthetic access$get_kodein$p(Lcom/github/salomonbrys/kodein/KodeinInjector;)Lcom/github/salomonbrys/kodein/Kodein;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/KodeinInjector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinInjector;->_kodein:Lcom/github/salomonbrys/kodein/Kodein;

    return-object v0
.end method

.method public static final synthetic access$get_list$p(Lcom/github/salomonbrys/kodein/KodeinInjector;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/KodeinInjector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinInjector;->_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$get_onInjecteds$p(Lcom/github/salomonbrys/kodein/KodeinInjector;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/KodeinInjector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinInjector;->_onInjecteds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$set_kodein$p(Lcom/github/salomonbrys/kodein/KodeinInjector;Lcom/github/salomonbrys/kodein/Kodein;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/KodeinInjector;
    .param p1, "<set-?>"    # Lcom/github/salomonbrys/kodein/Kodein;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    iput-object p1, p0, Lcom/github/salomonbrys/kodein/KodeinInjector;->_kodein:Lcom/github/salomonbrys/kodein/Kodein;

    return-void
.end method

.method public static final synthetic access$set_onInjecteds$p(Lcom/github/salomonbrys/kodein/KodeinInjector;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/KodeinInjector;
    .param p1, "<set-?>"    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 25
    iput-object p1, p0, Lcom/github/salomonbrys/kodein/KodeinInjector;->_onInjecteds:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final Factory(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;
    .locals 3
    .param p1, "argType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TA;>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/github/salomonbrys/kodein/InjectedProperty",
            "<",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/github/salomonbrys/kodein/InjectedFactoryProperty;

    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Key;

    new-instance v2, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-direct {v2, p2, p3}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    invoke-direct {v1, v2, p1}, Lcom/github/salomonbrys/kodein/Kodein$Key;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lcom/github/salomonbrys/kodein/TypeToken;)V

    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/InjectedFactoryProperty;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Key;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/InjectedProperty;

    invoke-direct {p0, v0}, Lcom/github/salomonbrys/kodein/KodeinInjector;->_register(Lcom/github/salomonbrys/kodein/InjectedProperty;)Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-result-object v0

    return-object v0
.end method

.method public final FactoryOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;
    .locals 3
    .param p1, "argType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "type"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "tag"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TA;>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/github/salomonbrys/kodein/InjectedProperty",
            "<",
            "Lkotlin/jvm/functions/Function1",
            "<TA;TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/github/salomonbrys/kodein/InjectedNullableFactoryProperty;

    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Key;

    new-instance v2, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-direct {v2, p2, p3}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    invoke-direct {v1, v2, p1}, Lcom/github/salomonbrys/kodein/Kodein$Key;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;Lcom/github/salomonbrys/kodein/TypeToken;)V

    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/InjectedNullableFactoryProperty;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Key;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/InjectedProperty;

    invoke-direct {p0, v0}, Lcom/github/salomonbrys/kodein/KodeinInjector;->_register(Lcom/github/salomonbrys/kodein/InjectedProperty;)Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-result-object v0

    return-object v0
.end method

.method public final Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;
    .locals 2
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
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/github/salomonbrys/kodein/InjectedProperty",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/github/salomonbrys/kodein/InjectedInstanceProperty;

    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-direct {v1, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/InjectedInstanceProperty;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/InjectedProperty;

    invoke-direct {p0, v0}, Lcom/github/salomonbrys/kodein/KodeinInjector;->_register(Lcom/github/salomonbrys/kodein/InjectedProperty;)Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-result-object v0

    return-object v0
.end method

.method public final InstanceOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;
    .locals 2
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
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/github/salomonbrys/kodein/InjectedProperty",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v0, Lcom/github/salomonbrys/kodein/InjectedNullableInstanceProperty;

    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-direct {v1, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/InjectedNullableInstanceProperty;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/InjectedProperty;

    invoke-direct {p0, v0}, Lcom/github/salomonbrys/kodein/KodeinInjector;->_register(Lcom/github/salomonbrys/kodein/InjectedProperty;)Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-result-object v0

    return-object v0
.end method

.method public final Provider(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;
    .locals 2
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
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/github/salomonbrys/kodein/InjectedProperty",
            "<",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/github/salomonbrys/kodein/InjectedProviderProperty;

    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-direct {v1, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/InjectedProviderProperty;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/InjectedProperty;

    invoke-direct {p0, v0}, Lcom/github/salomonbrys/kodein/KodeinInjector;->_register(Lcom/github/salomonbrys/kodein/InjectedProperty;)Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-result-object v0

    return-object v0
.end method

.method public final ProviderOrNull(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Lcom/github/salomonbrys/kodein/InjectedProperty;
    .locals 2
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
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/github/salomonbrys/kodein/InjectedProperty",
            "<",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/github/salomonbrys/kodein/InjectedNullableProviderProperty;

    new-instance v1, Lcom/github/salomonbrys/kodein/Kodein$Bind;

    invoke-direct {v1, p1, p2}, Lcom/github/salomonbrys/kodein/Kodein$Bind;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/InjectedNullableProviderProperty;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Bind;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/InjectedProperty;

    invoke-direct {p0, v0}, Lcom/github/salomonbrys/kodein/KodeinInjector;->_register(Lcom/github/salomonbrys/kodein/InjectedProperty;)Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-result-object v0

    return-object v0
.end method

.method public getInjector()Lcom/github/salomonbrys/kodein/KodeinInjector;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/KodeinInjector;->injector:Lcom/github/salomonbrys/kodein/KodeinInjector;

    return-object v0
.end method

.method public inject(Lcom/github/salomonbrys/kodein/Kodein;)V
    .locals 9
    .param p1, "kodein"    # Lcom/github/salomonbrys/kodein/Kodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v6, "kodein"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v7, p0, Lcom/github/salomonbrys/kodein/KodeinInjector;->_lock:Ljava/lang/Object;

    move-object v6, p0

    .line 198
    check-cast v6, Lcom/github/salomonbrys/kodein/KodeinInjector;

    .line 156
    # getter for: Lcom/github/salomonbrys/kodein/KodeinInjector;->_kodein:Lcom/github/salomonbrys/kodein/Kodein;
    invoke-static {v6}, Lcom/github/salomonbrys/kodein/KodeinInjector;->access$get_kodein$p(Lcom/github/salomonbrys/kodein/KodeinInjector;)Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 199
    .local v4, "it$iv":Lcom/github/salomonbrys/kodein/Kodein;
    move-object v3, v4

    .line 165
    .end local v4    # "it$iv":Lcom/github/salomonbrys/kodein/Kodein;
    :goto_0
    return-void

    .line 203
    :cond_0
    monitor-enter v7

    nop

    .line 204
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/github/salomonbrys/kodein/KodeinInjector;

    move-object v6, v0

    .line 156
    # getter for: Lcom/github/salomonbrys/kodein/KodeinInjector;->_kodein:Lcom/github/salomonbrys/kodein/Kodein;
    invoke-static {v6}, Lcom/github/salomonbrys/kodein/KodeinInjector;->access$get_kodein$p(Lcom/github/salomonbrys/kodein/KodeinInjector;)Lcom/github/salomonbrys/kodein/Kodein;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_1

    .restart local v4    # "it$iv":Lcom/github/salomonbrys/kodein/Kodein;
    move-object v5, v4

    .line 203
    .end local v4    # "it$iv":Lcom/github/salomonbrys/kodein/Kodein;
    :goto_1
    monitor-exit v7

    .line 212
    .local v5, "value$iv":Lcom/github/salomonbrys/kodein/Kodein;
    if-eqz v5, :cond_3

    .line 213
    move-object v3, v5

    .line 156
    .local v3, "it":Lcom/github/salomonbrys/kodein/Kodein;
    goto :goto_0

    .line 206
    .end local v3    # "it":Lcom/github/salomonbrys/kodein/Kodein;
    .end local v5    # "value$iv":Lcom/github/salomonbrys/kodein/Kodein;
    :cond_1
    nop

    .line 157
    :try_start_1
    invoke-static {p0, p1}, Lcom/github/salomonbrys/kodein/KodeinInjector;->access$set_kodein$p(Lcom/github/salomonbrys/kodein/KodeinInjector;Lcom/github/salomonbrys/kodein/Kodein;)V

    .line 159
    # getter for: Lcom/github/salomonbrys/kodein/KodeinInjector;->_list:Ljava/util/ArrayList;
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/KodeinInjector;->access$get_list$p(Lcom/github/salomonbrys/kodein/KodeinInjector;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 207
    .local v1, "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "element$iv":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Lcom/github/salomonbrys/kodein/InjectedProperty;

    move-object v3, v0

    .line 159
    .local v3, "it":Lcom/github/salomonbrys/kodein/InjectedProperty;
    invoke-interface {p1}, Lcom/github/salomonbrys/kodein/Kodein;->getContainer()Lcom/github/salomonbrys/kodein/KodeinContainer;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/github/salomonbrys/kodein/InjectedProperty;->_inject$kodein_core_main(Lcom/github/salomonbrys/kodein/KodeinContainer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 203
    .end local v1    # "$receiver$iv":Ljava/lang/Iterable;
    .end local v2    # "element$iv":Ljava/lang/Object;
    .end local v3    # "it":Lcom/github/salomonbrys/kodein/InjectedProperty;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 208
    .restart local v1    # "$receiver$iv":Ljava/lang/Iterable;
    :cond_2
    :try_start_2
    # getter for: Lcom/github/salomonbrys/kodein/KodeinInjector;->_list:Ljava/util/ArrayList;
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/KodeinInjector;->access$get_list$p(Lcom/github/salomonbrys/kodein/KodeinInjector;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    nop

    .line 209
    const/4 v5, 0x0

    goto :goto_1

    .line 214
    .end local v1    # "$receiver$iv":Ljava/lang/Iterable;
    .restart local v5    # "value$iv":Lcom/github/salomonbrys/kodein/Kodein;
    :cond_3
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/KodeinInjector;->_onInjecteds:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .line 215
    .restart local v1    # "$receiver$iv":Ljava/lang/Iterable;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "element$iv":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 163
    .local v3, "it":Lkotlin/jvm/functions/Function1;
    invoke-interface {v3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 216
    .end local v2    # "element$iv":Ljava/lang/Object;
    .end local v3    # "it":Lkotlin/jvm/functions/Function1;
    :cond_4
    iget-object v6, p0, Lcom/github/salomonbrys/kodein/KodeinInjector;->_onInjecteds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public final kodein()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy",
            "<",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/github/salomonbrys/kodein/KodeinInjector$kodein$1;

    invoke-direct {v0, p0}, Lcom/github/salomonbrys/kodein/KodeinInjector$kodein$1;-><init>(Lcom/github/salomonbrys/kodein/KodeinInjector;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public onInjected(Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p1, "cb"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lcom/github/salomonbrys/kodein/Kodein;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v3, "cb"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v4, p0, Lcom/github/salomonbrys/kodein/KodeinInjector;->_lock:Ljava/lang/Object;

    move-object v3, p0

    .line 168
    check-cast v3, Lcom/github/salomonbrys/kodein/KodeinInjector;

    .line 53
    # getter for: Lcom/github/salomonbrys/kodein/KodeinInjector;->_kodein:Lcom/github/salomonbrys/kodein/Kodein;
    invoke-static {v3}, Lcom/github/salomonbrys/kodein/KodeinInjector;->access$get_kodein$p(Lcom/github/salomonbrys/kodein/KodeinInjector;)Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 169
    .local v1, "it$iv":Lcom/github/salomonbrys/kodein/Kodein;
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .end local v1    # "it$iv":Lcom/github/salomonbrys/kodein/Kodein;
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    monitor-enter v4

    nop

    .line 174
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/github/salomonbrys/kodein/KodeinInjector;

    move-object v3, v0

    .line 53
    # getter for: Lcom/github/salomonbrys/kodein/KodeinInjector;->_kodein:Lcom/github/salomonbrys/kodein/Kodein;
    invoke-static {v3}, Lcom/github/salomonbrys/kodein/KodeinInjector;->access$get_kodein$p(Lcom/github/salomonbrys/kodein/KodeinInjector;)Lcom/github/salomonbrys/kodein/Kodein;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    .restart local v1    # "it$iv":Lcom/github/salomonbrys/kodein/Kodein;
    move-object v2, v1

    .line 173
    .end local v1    # "it$iv":Lcom/github/salomonbrys/kodein/Kodein;
    :goto_1
    monitor-exit v4

    .line 180
    .local v2, "value$iv":Lcom/github/salomonbrys/kodein/Kodein;
    if-eqz v2, :cond_0

    .line 181
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 176
    .end local v2    # "value$iv":Lcom/github/salomonbrys/kodein/Kodein;
    :cond_2
    nop

    .line 54
    :try_start_1
    # getter for: Lcom/github/salomonbrys/kodein/KodeinInjector;->_onInjecteds:Ljava/util/ArrayList;
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/KodeinInjector;->access$get_onInjecteds$p(Lcom/github/salomonbrys/kodein/KodeinInjector;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    nop

    .line 177
    const/4 v2, 0x0

    goto :goto_1

    .line 173
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
