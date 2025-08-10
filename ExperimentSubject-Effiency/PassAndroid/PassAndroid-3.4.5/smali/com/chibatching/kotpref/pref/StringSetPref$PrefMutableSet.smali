.class public final Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;
.super Ljava/lang/Object;
.source "StringSetPref.kt"

# interfaces
.implements Ljava/util/Set;
.implements Lkotlin/jvm/internal/markers/KMutableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chibatching/kotpref/pref/StringSetPref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PrefMutableSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet$KotprefMutableIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMutableSet;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010)\n\u0002\u0008\u0007\u0008\u0080\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001&B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u0016\u0010\u0017\u001a\u00020\u00152\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0011\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0002H\u0096\u0002J\u0016\u0010\u001d\u001a\u00020\u00152\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0019H\u0016J\t\u0010\u001e\u001a\u00020\u0015H\u0096\u0001J\u000f\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00020 H\u0096\u0002J\u0010\u0010!\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u0016\u0010\"\u001a\u00020\u00152\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0019H\u0016J\u0016\u0010#\u001a\u00020\u00152\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0019H\u0016J\r\u0010$\u001a\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008%R\u0011\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00018BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\r\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;",
        "",
        "",
        "kotprefModel",
        "Lcom/chibatching/kotpref/KotprefModel;",
        "set",
        "key",
        "(Lcom/chibatching/kotpref/pref/StringSetPref;Lcom/chibatching/kotpref/KotprefModel;Ljava/util/Set;Ljava/lang/String;)V",
        "getKey",
        "()Ljava/lang/String;",
        "getKotprefModel",
        "()Lcom/chibatching/kotpref/KotprefModel;",
        "getSet",
        "()Ljava/util/Set;",
        "size",
        "",
        "getSize",
        "()I",
        "transactionData",
        "getTransactionData",
        "add",
        "",
        "element",
        "addAll",
        "elements",
        "",
        "clear",
        "",
        "contains",
        "containsAll",
        "isEmpty",
        "iterator",
        "",
        "remove",
        "removeAll",
        "retainAll",
        "syncTransaction",
        "syncTransaction$kotpref_release",
        "KotprefMutableIterator",
        "kotpref_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x7
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final kotprefModel:Lcom/chibatching/kotpref/KotprefModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/chibatching/kotpref/pref/StringSetPref;

.field private transactionData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/chibatching/kotpref/pref/StringSetPref;Lcom/chibatching/kotpref/KotprefModel;Ljava/util/Set;Ljava/lang/String;)V
    .locals 1
    .param p1, "$outer"    # Lcom/chibatching/kotpref/pref/StringSetPref;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "kotprefModel"    # Lcom/chibatching/kotpref/KotprefModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "set"    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chibatching/kotpref/KotprefModel;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "kotprefModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "set"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->this$0:Lcom/chibatching/kotpref/pref/StringSetPref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    iput-object p3, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    iput-object p4, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->key:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private final getTransactionData()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->transactionData:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->transactionData:Ljava/util/Set;

    .line 33
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->transactionData:Ljava/util/Set;

    return-object v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->add(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/String;)Z
    .locals 5
    .param p1, "element"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "element"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefInTransaction$kotpref_release()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    invoke-direct {p0}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->getTransactionData()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 49
    .local v0, "result":Z
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefEditor$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences$KotprefEditor;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v3, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lcom/chibatching/kotpref/KotprefPreferences$KotprefEditor;->putStringSet$kotpref_release(Ljava/lang/String;Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;)Landroid/content/SharedPreferences$Editor;

    move v1, v0

    .line 54
    .end local v0    # "result":Z
    .local v1, "result":Z
    :goto_0
    return v1

    .line 52
    .end local v1    # "result":Z
    :cond_2
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 53
    .restart local v0    # "result":Z
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefPreference$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v1, v0

    .line 54
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .param p1, "elements"    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const-string v2, "elements"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefInTransaction$kotpref_release()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    invoke-direct {p0}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->getTransactionData()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 60
    .local v0, "result":Z
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefEditor$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences$KotprefEditor;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v3, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lcom/chibatching/kotpref/KotprefPreferences$KotprefEditor;->putStringSet$kotpref_release(Ljava/lang/String;Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;)Landroid/content/SharedPreferences$Editor;

    move v1, v0

    .line 65
    .end local v0    # "result":Z
    .local v1, "result":Z
    :goto_0
    return v1

    .line 63
    .end local v1    # "result":Z
    :cond_2
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 64
    .restart local v0    # "result":Z
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefPreference$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v1, v0

    .line 65
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 102
    iget-object v1, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v1}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefInTransaction$kotpref_release()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    invoke-direct {p0}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->getTransactionData()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 104
    .local v0, "result":Lkotlin/Unit;
    iget-object v1, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v1}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefEditor$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences$KotprefEditor;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/chibatching/kotpref/KotprefPreferences$KotprefEditor;->putStringSet$kotpref_release(Ljava/lang/String;Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;)Landroid/content/SharedPreferences$Editor;

    .line 109
    .end local v0    # "result":Lkotlin/Unit;
    :goto_0
    return-void

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 108
    iget-object v1, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v1}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefPreference$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chibatching/kotpref/KotprefPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 24
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->contains(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v0}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefInTransaction$kotpref_release()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->getTransactionData()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 115
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "elements"    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v0}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefInTransaction$kotpref_release()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->getTransactionData()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 122
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getKotprefModel()Lcom/chibatching/kotpref/KotprefModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    return-object v0
.end method

.method public final getSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v0}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefInTransaction$kotpref_release()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->getTransactionData()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v0}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefInTransaction$kotpref_release()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v0}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefEditor$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences$KotprefEditor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v1, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/chibatching/kotpref/KotprefPreferences$KotprefEditor;->putStringSet$kotpref_release(Ljava/lang/String;Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;)Landroid/content/SharedPreferences$Editor;

    .line 128
    new-instance v0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet$KotprefMutableIterator;

    invoke-direct {p0}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->getTransactionData()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet$KotprefMutableIterator;-><init>(Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;Ljava/util/Iterator;Z)V

    check-cast v0, Ljava/util/Iterator;

    .line 126
    :goto_0
    return-object v0

    .line 130
    :cond_2
    new-instance v0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet$KotprefMutableIterator;

    iget-object v1, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet$KotprefMutableIterator;-><init>(Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;Ljava/util/Iterator;Z)V

    check-cast v0, Ljava/util/Iterator;

    goto :goto_0
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 24
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->remove(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 5
    .param p1, "element"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "element"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefInTransaction$kotpref_release()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    invoke-direct {p0}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->getTransactionData()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 71
    .local v0, "result":Z
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefEditor$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences$KotprefEditor;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v3, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lcom/chibatching/kotpref/KotprefPreferences$KotprefEditor;->putStringSet$kotpref_release(Ljava/lang/String;Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;)Landroid/content/SharedPreferences$Editor;

    move v1, v0

    .line 76
    .end local v0    # "result":Z
    .local v1, "result":Z
    :goto_0
    return v1

    .line 74
    .end local v1    # "result":Z
    :cond_2
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 75
    .restart local v0    # "result":Z
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefPreference$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v1, v0

    .line 76
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .param p1, "elements"    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const-string v2, "elements"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefInTransaction$kotpref_release()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    invoke-direct {p0}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->getTransactionData()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 82
    .local v0, "result":Z
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefEditor$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences$KotprefEditor;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v3, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lcom/chibatching/kotpref/KotprefPreferences$KotprefEditor;->putStringSet$kotpref_release(Ljava/lang/String;Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;)Landroid/content/SharedPreferences$Editor;

    move v1, v0

    .line 87
    .end local v0    # "result":Z
    .local v1, "result":Z
    :goto_0
    return v1

    .line 85
    .end local v1    # "result":Z
    :cond_2
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 86
    .restart local v0    # "result":Z
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefPreference$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v1, v0

    .line 87
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5
    .param p1, "elements"    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const-string v2, "elements"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefInTransaction$kotpref_release()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    invoke-direct {p0}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->getTransactionData()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {v2, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 93
    .local v0, "result":Z
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefEditor$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences$KotprefEditor;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v3, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lcom/chibatching/kotpref/KotprefPreferences$KotprefEditor;->putStringSet$kotpref_release(Ljava/lang/String;Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;)Landroid/content/SharedPreferences$Editor;

    move v1, v0

    .line 98
    .end local v0    # "result":Z
    .local v1, "result":Z
    :goto_0
    return v1

    .line 96
    .end local v1    # "result":Z
    :cond_2
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 97
    .restart local v0    # "result":Z
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->kotprefModel:Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefPreference$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chibatching/kotpref/KotprefPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v1, v0

    .line 98
    .end local v0    # "result":Z
    .restart local v1    # "result":Z
    goto :goto_0
.end method

.method public final bridge size()I
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->getSize()I

    move-result v0

    return v0
.end method

.method public final syncTransaction$kotpref_release()V
    .locals 3

    .prologue
    .line 37
    monitor-enter p0

    nop

    .line 38
    :try_start_0
    invoke-direct {p0}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->getTransactionData()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    .local v0, "it":Ljava/util/Set;
    iget-object v1, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 40
    iget-object v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->set:Ljava/util/Set;

    invoke-direct {p0}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->getTransactionData()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 41
    const/4 v1, 0x0

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;->transactionData:Ljava/util/Set;

    .line 42
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "it":Ljava/util/Set;
    :cond_1
    nop

    .line 37
    monitor-exit p0

    .line 44
    return-void

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
