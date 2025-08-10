.class public Lorg/ligi/snackengage/stats/SnackStats;
.super Ljava/lang/Object;
.source "SnackStats.java"


# static fields
.field private static final KEY_LAST_SNACK_CLICK:Ljava/lang/String; = "KEY_LAST_SNACK_CLICK"

.field private static final KEY_LAST_SNACK_SHOW:Ljava/lang/String; = "KEY_LAST_SNACK_SHOW"

.field private static final KEY_OPPORTUNITY_COUNTER:Ljava/lang/String; = "OPPORTUNITY_COUNTER"

.field private static final KEY_TIMES_SHOWN:Ljava/lang/String; = "KEY_TIMES_SHOWN"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/ligi/snackengage/stats/SnackStats;->context:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private getLastSnackShow(Lorg/ligi/snackengage/snacks/Snack;)J
    .locals 4
    .param p1, "snack"    # Lorg/ligi/snackengage/snacks/Snack;

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/ligi/snackengage/stats/SnackStats;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_LAST_SNACK_SHOW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/ligi/snackengage/snacks/Snack;->uniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOpportunityCount(Lorg/ligi/snackengage/snacks/Snack;)J
    .locals 4
    .param p1, "snack"    # Lorg/ligi/snackengage/snacks/Snack;

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/ligi/snackengage/stats/SnackStats;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPPORTUNITY_COUNTER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/ligi/snackengage/snacks/Snack;->uniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getOpportunitiesSinceLastSnack(Lorg/ligi/snackengage/snacks/Snack;)J
    .locals 4
    .param p1, "snack"    # Lorg/ligi/snackengage/snacks/Snack;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/ligi/snackengage/stats/SnackStats;->getOpportunityCount(Lorg/ligi/snackengage/snacks/Snack;)J

    move-result-wide v0

    invoke-direct {p0, p1}, Lorg/ligi/snackengage/stats/SnackStats;->getLastSnackShow(Lorg/ligi/snackengage/snacks/Snack;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected getPrefs()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/ligi/snackengage/stats/SnackStats;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public registerOpportunity(Lorg/ligi/snackengage/snacks/Snack;)V
    .locals 6
    .param p1, "snack"    # Lorg/ligi/snackengage/snacks/Snack;

    .prologue
    .line 44
    invoke-virtual {p0}, Lorg/ligi/snackengage/stats/SnackStats;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPPORTUNITY_COUNTER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/ligi/snackengage/snacks/Snack;->uniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/ligi/snackengage/stats/SnackStats;->getOpportunityCount(Lorg/ligi/snackengage/snacks/Snack;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    return-void
.end method

.method public registerSnackClick(Lorg/ligi/snackengage/snacks/Snack;)V
    .locals 4
    .param p1, "snack"    # Lorg/ligi/snackengage/snacks/Snack;

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/ligi/snackengage/stats/SnackStats;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 61
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_LAST_SNACK_CLICK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/ligi/snackengage/snacks/Snack;->uniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/ligi/snackengage/stats/SnackStats;->getOpportunityCount(Lorg/ligi/snackengage/snacks/Snack;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void
.end method

.method public registerSnackShow(Lorg/ligi/snackengage/snacks/Snack;)V
    .locals 4
    .param p1, "snack"    # Lorg/ligi/snackengage/snacks/Snack;

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/ligi/snackengage/stats/SnackStats;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_LAST_SNACK_SHOW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/ligi/snackengage/snacks/Snack;->uniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/ligi/snackengage/stats/SnackStats;->getOpportunityCount(Lorg/ligi/snackengage/snacks/Snack;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_TIMES_SHOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/ligi/snackengage/snacks/Snack;->uniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/ligi/snackengage/stats/SnackStats;->timesSnackWasShown(Lorg/ligi/snackengage/snacks/Snack;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method public timesSnackWasShown(Lorg/ligi/snackengage/snacks/Snack;)I
    .locals 3
    .param p1, "snack"    # Lorg/ligi/snackengage/snacks/Snack;

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/ligi/snackengage/stats/SnackStats;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_TIMES_SHOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/ligi/snackengage/snacks/Snack;->uniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public wasSnackEverClicked(Lorg/ligi/snackengage/snacks/Snack;)Z
    .locals 6
    .param p1, "snack"    # Lorg/ligi/snackengage/snacks/Snack;

    .prologue
    const-wide/16 v4, 0x0

    .line 67
    invoke-virtual {p0}, Lorg/ligi/snackengage/stats/SnackStats;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_LAST_SNACK_CLICK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/ligi/snackengage/snacks/Snack;->uniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
