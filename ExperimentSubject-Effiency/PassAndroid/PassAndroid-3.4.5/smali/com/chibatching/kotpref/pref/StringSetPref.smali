.class public final Lcom/chibatching/kotpref/pref/StringSetPref;
.super Ljava/lang/Object;
.source "StringSetPref.kt"

# interfaces
.implements Lkotlin/properties/ReadOnlyProperty;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/properties/ReadOnlyProperty",
        "<",
        "Lcom/chibatching/kotpref/KotprefModel;",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u0001\u0015B#\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00070\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\tJ#\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0012\u001a\u00020\u00022\n\u0010\u0013\u001a\u0006\u0012\u0002\u0008\u00030\u0014H\u0096\u0002R\u001d\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/chibatching/kotpref/pref/StringSetPref;",
        "Lkotlin/properties/ReadOnlyProperty;",
        "Lcom/chibatching/kotpref/KotprefModel;",
        "",
        "",
        "default",
        "Lkotlin/Function0;",
        "",
        "key",
        "(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V",
        "getDefault",
        "()Lkotlin/jvm/functions/Function0;",
        "getKey",
        "()Ljava/lang/String;",
        "lastUpdate",
        "",
        "stringSet",
        "getValue",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
        "PrefMutableSet",
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
.field private final default:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastUpdate:J

.field private stringSet:Ljava/util/Set;
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
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V
    .locals 1
    .param p1, "default"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0",
            "<+",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "default"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chibatching/kotpref/pref/StringSetPref;->default:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/chibatching/kotpref/pref/StringSetPref;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDefault()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref;->default:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/StringSetPref;->key:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {p0, p1, p2}, Lcom/chibatching/kotpref/pref/StringSetPref;->getValue(Lcom/chibatching/kotpref/KotprefModel;Lkotlin/reflect/KProperty;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/chibatching/kotpref/KotprefModel;Lkotlin/reflect/KProperty;)Ljava/util/Set;
    .locals 6
    .param p1, "thisRef"    # Lcom/chibatching/kotpref/KotprefModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "property"    # Lkotlin/reflect/KProperty;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chibatching/kotpref/KotprefModel;",
            "Lkotlin/reflect/KProperty",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "thisRef"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "property"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/chibatching/kotpref/pref/StringSetPref;->stringSet:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref;->lastUpdate:J

    invoke-virtual {p1}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefTransactionStartTime$kotpref_release()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefPreference$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences;

    move-result-object v2

    iget-object v1, p0, Lcom/chibatching/kotpref/pref/StringSetPref;->key:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/chibatching/kotpref/KotprefPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 18
    .local v0, "prefSet":Ljava/util/Set;
    new-instance v2, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;

    if-eqz v0, :cond_4

    .end local v0    # "prefSet":Ljava/util/Set;
    :goto_1
    iget-object v1, p0, Lcom/chibatching/kotpref/pref/StringSetPref;->key:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_2
    invoke-direct {v2, p0, p1, v0, v1}, Lcom/chibatching/kotpref/pref/StringSetPref$PrefMutableSet;-><init>(Lcom/chibatching/kotpref/pref/StringSetPref;Lcom/chibatching/kotpref/KotprefModel;Ljava/util/Set;Ljava/lang/String;)V

    move-object v1, v2

    check-cast v1, Ljava/util/Set;

    iput-object v1, p0, Lcom/chibatching/kotpref/pref/StringSetPref;->stringSet:Ljava/util/Set;

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/chibatching/kotpref/pref/StringSetPref;->lastUpdate:J

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/chibatching/kotpref/pref/StringSetPref;->stringSet:Ljava/util/Set;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    return-object v1

    .line 17
    :cond_3
    invoke-interface {p2}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 18
    .restart local v0    # "prefSet":Ljava/util/Set;
    :cond_4
    iget-object v1, p0, Lcom/chibatching/kotpref/pref/StringSetPref;->default:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    .end local v0    # "prefSet":Ljava/util/Set;
    :cond_5
    invoke-interface {p2}, Lkotlin/reflect/KProperty;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
