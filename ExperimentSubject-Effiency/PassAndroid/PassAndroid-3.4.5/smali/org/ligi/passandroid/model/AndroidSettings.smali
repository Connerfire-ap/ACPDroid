.class public final Lorg/ligi/passandroid/model/AndroidSettings;
.super Ljava/lang/Object;
.source "AndroidSettings.kt"

# interfaces
.implements Lorg/ligi/passandroid/model/Settings;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0013H\u0016J\u0008\u0010\u0017\u001a\u00020\u000fH\u0016J\u0008\u0010\u0018\u001a\u00020\u000fH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R#\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u00088@X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0019"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/AndroidSettings;",
        "Lorg/ligi/passandroid/model/Settings;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "getSharedPreferences$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug",
        "()Landroid/content/SharedPreferences;",
        "sharedPreferences$delegate",
        "Lkotlin/Lazy;",
        "doTraceDroidEmailSend",
        "",
        "getNightMode",
        "",
        "getPassesDir",
        "Ljava/io/File;",
        "getSortOrder",
        "Lorg/ligi/passandroid/model/comparator/PassSortOrder;",
        "getStateDir",
        "isAutomaticLightEnabled",
        "isCondensedModeEnabled",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedPreferences$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lorg/ligi/passandroid/model/AndroidSettings;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "sharedPreferences"

    const-string v5, "getSharedPreferences$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()Landroid/content/SharedPreferences;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lorg/ligi/passandroid/model/AndroidSettings;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/model/AndroidSettings;->context:Landroid/content/Context;

    .line 14
    new-instance v0, Lorg/ligi/passandroid/model/AndroidSettings$sharedPreferences$2;

    invoke-direct {v0, p0}, Lorg/ligi/passandroid/model/AndroidSettings$sharedPreferences$2;-><init>(Lorg/ligi/passandroid/model/AndroidSettings;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/model/AndroidSettings;->sharedPreferences$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public doTraceDroidEmailSend()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lorg/ligi/passandroid/model/AndroidSettings;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getNightMode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/AndroidSettings;->getSharedPreferences$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lorg/ligi/passandroid/model/AndroidSettings;->context:Landroid/content/Context;

    const v4, 0x7f0700ca

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "auto"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "day"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const/4 v1, 0x1

    goto :goto_0

    .line 36
    :sswitch_1
    const-string v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v2, "night"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    const/4 v1, 0x2

    goto :goto_0

    .line 36
    :sswitch_data_0
    .sparse-switch
        0x1839c -> :sswitch_0
        0x2dddaf -> :sswitch_1
        0x63f6418 -> :sswitch_2
    .end sparse-switch
.end method

.method public getPassesDir()Ljava/io/File;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 26
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/ligi/passandroid/model/AndroidSettings;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "context.filesDir"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "passes"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSharedPreferences$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/ligi/passandroid/model/AndroidSettings;->sharedPreferences$delegate:Lkotlin/Lazy;

    sget-object v1, Lorg/ligi/passandroid/model/AndroidSettings;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getSortOrder()Lorg/ligi/passandroid/model/comparator/PassSortOrder;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 17
    iget-object v6, p0, Lorg/ligi/passandroid/model/AndroidSettings;->context:Landroid/content/Context;

    const v8, 0x7f0700cb

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 18
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/AndroidSettings;->getSharedPreferences$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v8, "0"

    invoke-interface {v6, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    .local v5, "stringValue":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 21
    .local v2, "id":I
    invoke-static {}, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->values()[Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .local v0, "$receiver$iv":[Ljava/lang/Object;
    move v6, v7

    .line 46
    :goto_0
    array-length v8, v0

    if-ge v6, v8, :cond_3

    aget-object v1, v0, v6

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    .line 21
    .local v3, "it":Lorg/ligi/passandroid/model/comparator/PassSortOrder;
    invoke-virtual {v3}, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->getInt()I

    move-result v8

    if-ne v8, v2, :cond_1

    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_2

    .line 47
    check-cast v1, Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    .end local v1    # "element$iv":Ljava/lang/Object;
    return-object v1

    .restart local v1    # "element$iv":Ljava/lang/Object;
    :cond_1
    move v8, v7

    .line 21
    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v3    # "it":Lorg/ligi/passandroid/model/comparator/PassSortOrder;
    :cond_3
    new-instance v6, Ljava/util/NoSuchElementException;

    const-string v7, "Array contains no element matching the predicate."

    invoke-direct {v6, v7}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6
.end method

.method public getStateDir()Ljava/io/File;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/ligi/passandroid/model/AndroidSettings;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public isAutomaticLightEnabled()Z
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/AndroidSettings;->getSharedPreferences$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/model/AndroidSettings;->context:Landroid/content/Context;

    const v2, 0x7f0700c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCondensedModeEnabled()Z
    .locals 3

    .prologue
    .line 30
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/AndroidSettings;->getSharedPreferences$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/model/AndroidSettings;->context:Landroid/content/Context;

    const v2, 0x7f0700c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
