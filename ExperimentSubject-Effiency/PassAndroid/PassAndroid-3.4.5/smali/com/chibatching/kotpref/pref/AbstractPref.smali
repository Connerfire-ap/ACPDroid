.class public abstract Lcom/chibatching/kotpref/pref/AbstractPref;
.super Ljava/lang/Object;
.source "AbstractPref.kt"

# interfaces
.implements Lkotlin/properties/ReadWriteProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/properties/ReadWriteProperty",
        "<",
        "Lcom/chibatching/kotpref/KotprefModel;",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005\u00a2\u0006\u0002\u0010\u0004J!\u0010\t\u001a\u00028\u00002\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000b2\u0006\u0010\u000c\u001a\u00020\rH&\u00a2\u0006\u0002\u0010\u000eJ\"\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00020\u00032\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000bH\u0096\u0002\u00a2\u0006\u0002\u0010\u0011J)\u0010\u0012\u001a\u00020\u00132\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000b2\u0006\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0015\u001a\u00020\u0016H&\u00a2\u0006\u0002\u0010\u0017J)\u0010\u0018\u001a\u00020\u00132\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000b2\u0006\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00020\rH&\u00a2\u0006\u0002\u0010\u0019J*\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u00032\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000b2\u0006\u0010\u0014\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u001bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/chibatching/kotpref/pref/AbstractPref;",
        "T",
        "Lkotlin/properties/ReadWriteProperty;",
        "Lcom/chibatching/kotpref/KotprefModel;",
        "()V",
        "lastUpdate",
        "",
        "transactionData",
        "",
        "getFromPreference",
        "property",
        "Lkotlin/reflect/KProperty;",
        "preference",
        "Landroid/content/SharedPreferences;",
        "(Lkotlin/reflect/KProperty;Landroid/content/SharedPreferences;)Ljava/lang/Object;",
        "getValue",
        "thisRef",
        "(Lcom/chibatching/kotpref/KotprefModel;Lkotlin/reflect/KProperty;)Ljava/lang/Object;",
        "setToEditor",
        "",
        "value",
        "editor",
        "Landroid/content/SharedPreferences$Editor;",
        "(Lkotlin/reflect/KProperty;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)V",
        "setToPreference",
        "(Lkotlin/reflect/KProperty;Ljava/lang/Object;Landroid/content/SharedPreferences;)V",
        "setValue",
        "(Lcom/chibatching/kotpref/KotprefModel;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V",
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
.field private lastUpdate:J

.field private transactionData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFromPreference(Lkotlin/reflect/KProperty;Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .param p1    # Lkotlin/reflect/KProperty;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty",
            "<*>;",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation
.end method

.method public getValue(Lcom/chibatching/kotpref/KotprefModel;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 4
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
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    const-string v0, "thisRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefInTransaction$kotpref_release()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefPreference$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-virtual {p0, p2, v0}, Lcom/chibatching/kotpref/pref/AbstractPref;->getFromPreference(Lkotlin/reflect/KProperty;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    .line 18
    :cond_0
    iget-wide v0, p0, Lcom/chibatching/kotpref/pref/AbstractPref;->lastUpdate:J

    invoke-virtual {p1}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefTransactionStartTime$kotpref_release()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefPreference$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-virtual {p0, p2, v0}, Lcom/chibatching/kotpref/pref/AbstractPref;->getFromPreference(Lkotlin/reflect/KProperty;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/chibatching/kotpref/pref/AbstractPref;->transactionData:Ljava/lang/Object;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chibatching/kotpref/pref/AbstractPref;->lastUpdate:J

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/chibatching/kotpref/pref/AbstractPref;->transactionData:Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {p0, p1, p2}, Lcom/chibatching/kotpref/pref/AbstractPref;->getValue(Lcom/chibatching/kotpref/KotprefModel;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract setToEditor(Lkotlin/reflect/KProperty;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)V
    .param p1    # Lkotlin/reflect/KProperty;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/SharedPreferences$Editor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty",
            "<*>;TT;",
            "Landroid/content/SharedPreferences$Editor;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setToPreference(Lkotlin/reflect/KProperty;Ljava/lang/Object;Landroid/content/SharedPreferences;)V
    .param p1    # Lkotlin/reflect/KProperty;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty",
            "<*>;TT;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation
.end method

.method public setValue(Lcom/chibatching/kotpref/KotprefModel;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    .locals 2
    .param p1, "thisRef"    # Lcom/chibatching/kotpref/KotprefModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "property"    # Lkotlin/reflect/KProperty;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chibatching/kotpref/KotprefModel;",
            "Lkotlin/reflect/KProperty",
            "<*>;TT;)V"
        }
    .end annotation

    .prologue
    const-string v0, "thisRef"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefInTransaction$kotpref_release()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iput-object p3, p0, Lcom/chibatching/kotpref/pref/AbstractPref;->transactionData:Ljava/lang/Object;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/chibatching/kotpref/pref/AbstractPref;->lastUpdate:J

    .line 30
    invoke-virtual {p1}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefEditor$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences$KotprefEditor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v0, Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0, p2, p3, v0}, Lcom/chibatching/kotpref/pref/AbstractPref;->setToEditor(Lkotlin/reflect/KProperty;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)V

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/chibatching/kotpref/KotprefModel;->getKotprefPreference$kotpref_release()Lcom/chibatching/kotpref/KotprefPreferences;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-virtual {p0, p2, p3, v0}, Lcom/chibatching/kotpref/pref/AbstractPref;->setToPreference(Lkotlin/reflect/KProperty;Ljava/lang/Object;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Lcom/chibatching/kotpref/KotprefModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/chibatching/kotpref/pref/AbstractPref;->setValue(Lcom/chibatching/kotpref/KotprefModel;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
