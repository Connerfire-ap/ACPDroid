.class public Lorg/ligi/snackengage/conditions/locale/IsOneOfTheseLocales;
.super Ljava/lang/Object;
.source "IsOneOfTheseLocales.java"

# interfaces
.implements Lorg/ligi/snackengage/conditions/SnackCondition;


# instance fields
.field private final locales:[Ljava/util/Locale;


# direct methods
.method public varargs constructor <init>([Ljava/util/Locale;)V
    .locals 0
    .param p1, "locales"    # [Ljava/util/Locale;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/ligi/snackengage/conditions/locale/IsOneOfTheseLocales;->locales:[Ljava/util/Locale;

    .line 15
    return-void
.end method


# virtual methods
.method public isAppropriate(Lorg/ligi/snackengage/SnackContext;Lorg/ligi/snackengage/snacks/Snack;)Z
    .locals 7
    .param p1, "context"    # Lorg/ligi/snackengage/SnackContext;
    .param p2, "snack"    # Lorg/ligi/snackengage/snacks/Snack;

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "displayLanguage":Ljava/lang/String;
    iget-object v4, p0, Lorg/ligi/snackengage/conditions/locale/IsOneOfTheseLocales;->locales:[Ljava/util/Locale;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 22
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 23
    const/4 v2, 0x1

    .line 26
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_0
    return v2

    .line 21
    .restart local v1    # "locale":Ljava/util/Locale;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
