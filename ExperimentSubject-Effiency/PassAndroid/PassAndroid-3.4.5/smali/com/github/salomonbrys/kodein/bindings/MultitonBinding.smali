.class public final Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;
.super Ljava/lang/Object;
.source "bindings.kt"

# interfaces
.implements Lcom/github/salomonbrys/kodein/bindings/Binding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/salomonbrys/kodein/bindings/Binding",
        "<TA;TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0008\u0008\u0001\u0010\u0002*\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004BD\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00010\u0006\u0012\u001d\u0010\u0008\u001a\u0019\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t\u00a2\u0006\u0002\u0008\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J1\u0010\u0016\u001a\u00028\u00012\u0006\u0010\u0017\u001a\u00020\n2\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00192\u0006\u0010\u001a\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001bR\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R(\u0010\u0008\u001a\u0019\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t\u00a2\u0006\u0002\u0008\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;",
        "A",
        "T",
        "",
        "Lcom/github/salomonbrys/kodein/bindings/Binding;",
        "argType",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "createdType",
        "creator",
        "Lkotlin/Function2;",
        "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Lkotlin/jvm/functions/Function2;)V",
        "_instances",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "getArgType",
        "()Lcom/github/salomonbrys/kodein/TypeToken;",
        "getCreatedType",
        "getCreator",
        "()Lkotlin/jvm/functions/Function2;",
        "factoryName",
        "",
        "getInstance",
        "kodein",
        "key",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "arg",
        "(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)Ljava/lang/Object;",
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
.field private final _instances:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final argType:Lcom/github/salomonbrys/kodein/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<-TA;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
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

.field private final creator:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
            "TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/TypeToken;Lcom/github/salomonbrys/kodein/TypeToken;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "argType"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "createdType"    # Lcom/github/salomonbrys/kodein/TypeToken;
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
            "<-TA;>;",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<+TT;>;",
            "Lkotlin/jvm/functions/Function2",
            "<-",
            "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
            "-TA;+TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "argType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->argType:Lcom/github/salomonbrys/kodein/TypeToken;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->createdType:Lcom/github/salomonbrys/kodein/TypeToken;

    iput-object p3, p0, Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->creator:Lkotlin/jvm/functions/Function2;

    .line 32
    invoke-static {}, Lcom/github/salomonbrys/kodein/LangKt;->newConcurrentMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->_instances:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$get_instances$p(Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->_instances:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public factoryFullName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/Binding$DefaultImpls;->factoryFullName(Lcom/github/salomonbrys/kodein/bindings/Binding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public factoryName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 34
    const-string v0, "multiton"

    return-object v0
.end method

.method public getArgType()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<-TA;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->argType:Lcom/github/salomonbrys/kodein/TypeToken;

    return-object v0
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
    .line 31
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->createdType:Lcom/github/salomonbrys/kodein/TypeToken;

    return-object v0
.end method

.method public final getCreator()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
            "TA;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->creator:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/Binding$DefaultImpls;->getDescription(Lcom/github/salomonbrys/kodein/bindings/Binding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/Binding$DefaultImpls;->getFullDescription(Lcom/github/salomonbrys/kodein/bindings/Binding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "kodein"    # Lcom/github/salomonbrys/kodein/bindings/BindingKodein;
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
            "Lcom/github/salomonbrys/kodein/bindings/BindingKodein;",
            "Lcom/github/salomonbrys/kodein/Kodein$Key",
            "<+TA;+TT;>;TA;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v4, "kodein"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "key"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->_instances:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    .local v2, "lock$iv":Ljava/util/concurrent/ConcurrentHashMap;
    nop

    .line 37
    # getter for: Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->_instances:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->access$get_instances$p(Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    .local v1, "it$iv":Ljava/lang/Object;
    move-object v0, v1

    .line 37
    .local v0, "it":Ljava/lang/Object;
    const-string v4, "it"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "it$iv":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :cond_1
    monitor-enter v2

    nop

    .line 126
    nop

    .line 37
    :try_start_0
    # getter for: Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->_instances:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->access$get_instances$p(Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    .restart local v1    # "it$iv":Ljava/lang/Object;
    move-object v3, v1

    .line 125
    .end local v1    # "it$iv":Ljava/lang/Object;
    :goto_1
    monitor-exit v2

    .line 132
    .local v3, "value$iv":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 133
    move-object v0, v3

    .line 37
    .restart local v0    # "it":Ljava/lang/Object;
    const-string v4, "it"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .end local v0    # "it":Ljava/lang/Object;
    .end local v3    # "value$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 38
    :try_start_1
    # getter for: Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->_instances:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->access$get_instances$p(Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->getCreator()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-interface {v5, p1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, p3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    .line 129
    const/4 v3, 0x0

    goto :goto_1

    .line 125
    :catchall_0
    move-exception v4

    monitor-exit v2

    throw v4

    .line 134
    .restart local v3    # "value$iv":Ljava/lang/Object;
    :cond_3
    iget-object v4, p0, Lcom/github/salomonbrys/kodein/bindings/MultitonBinding;->_instances:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_0
.end method
