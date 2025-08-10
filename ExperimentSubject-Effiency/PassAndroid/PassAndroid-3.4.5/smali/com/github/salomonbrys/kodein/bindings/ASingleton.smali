.class public abstract Lcom/github/salomonbrys/kodein/bindings/ASingleton;
.super Ljava/lang/Object;
.source "bindings.kt"

# interfaces
.implements Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
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
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B \u0008\u0000\u0012\u0017\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0002\u0008\u0007\u00a2\u0006\u0002\u0010\u0008J)\u0010\u000e\u001a\u00028\u00002\u0006\u0010\u000f\u001a\u00020\u00062\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00028\u00000\u0011H\u0016\u00a2\u0006\u0002\u0010\u0013R\u0016\u0010\t\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u0004\u001a\u0013\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0002\u0008\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/bindings/ASingleton;",
        "T",
        "",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;",
        "creator",
        "Lkotlin/Function1;",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "_instance",
        "Ljava/lang/Object;",
        "_lock",
        "getCreator",
        "()Lkotlin/jvm/functions/Function1;",
        "getInstance",
        "kodein",
        "key",
        "Lcom/github/salomonbrys/kodein/Kodein$Key;",
        "",
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
.field private volatile _instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final _lock:Ljava/lang/Object;

.field private final creator:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "creator"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
            "+TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "creator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/bindings/ASingleton;->creator:Lkotlin/jvm/functions/Function1;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/ASingleton;->_lock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$get_instance$p(Lcom/github/salomonbrys/kodein/bindings/ASingleton;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/bindings/ASingleton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/ASingleton;->_instance:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$set_instance$p(Lcom/github/salomonbrys/kodein/bindings/ASingleton;Ljava/lang/Object;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/salomonbrys/kodein/bindings/ASingleton;
    .param p1, "<set-?>"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 65
    iput-object p1, p0, Lcom/github/salomonbrys/kodein/bindings/ASingleton;->_instance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public factoryFullName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 65
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->factoryFullName(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Ljava/lang/String;

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
    .line 65
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->getArgType(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public final getCreator()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/ASingleton;->creator:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 65
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->getDescription(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 65
    invoke-static {p0}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->getFullDescription(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    check-cast p3, Lkotlin/Unit;

    invoke-virtual {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/bindings/ASingleton;->getInstance(Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/Unit;)Ljava/lang/Object;

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

    .line 65
    invoke-static {p0, p1, p2, p3}, Lcom/github/salomonbrys/kodein/bindings/NoArgBinding$DefaultImpls;->getInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBinding;Lcom/github/salomonbrys/kodein/bindings/BindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;Lkotlin/Unit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;)Ljava/lang/Object;
    .locals 6
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
    const-string v4, "kodein"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "key"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v5, p0, Lcom/github/salomonbrys/kodein/bindings/ASingleton;->_lock:Ljava/lang/Object;

    move-object v4, p0

    .line 120
    check-cast v4, Lcom/github/salomonbrys/kodein/bindings/ASingleton;

    .line 70
    # getter for: Lcom/github/salomonbrys/kodein/bindings/ASingleton;->_instance:Ljava/lang/Object;
    invoke-static {v4}, Lcom/github/salomonbrys/kodein/bindings/ASingleton;->access$get_instance$p(Lcom/github/salomonbrys/kodein/bindings/ASingleton;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 121
    .local v2, "it$iv":Ljava/lang/Object;
    move-object v1, v2

    .line 134
    .end local v2    # "it$iv":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 125
    :cond_1
    monitor-enter v5

    nop

    .line 126
    :try_start_0
    move-object v0, p0

    check-cast v0, Lcom/github/salomonbrys/kodein/bindings/ASingleton;

    move-object v4, v0

    .line 70
    # getter for: Lcom/github/salomonbrys/kodein/bindings/ASingleton;->_instance:Ljava/lang/Object;
    invoke-static {v4}, Lcom/github/salomonbrys/kodein/bindings/ASingleton;->access$get_instance$p(Lcom/github/salomonbrys/kodein/bindings/ASingleton;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    .restart local v2    # "it$iv":Ljava/lang/Object;
    move-object v3, v2

    .line 125
    .end local v2    # "it$iv":Ljava/lang/Object;
    :goto_1
    monitor-exit v5

    .line 132
    .local v3, "value$iv":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 133
    move-object v1, v3

    .line 70
    .local v1, "it":Ljava/lang/Object;
    goto :goto_0

    .line 128
    .end local v1    # "it":Ljava/lang/Object;
    .end local v3    # "value$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 71
    :try_start_1
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/bindings/ASingleton;->getCreator()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-interface {v4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/github/salomonbrys/kodein/bindings/ASingleton;->access$set_instance$p(Lcom/github/salomonbrys/kodein/bindings/ASingleton;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    nop

    .line 129
    const/4 v3, 0x0

    goto :goto_1

    .line 125
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 134
    .restart local v3    # "value$iv":Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/ASingleton;->_instance:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    goto :goto_0
.end method
