.class final enum Lorg/threeten/bp/temporal/IsoFields$Unit;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalUnit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/IsoFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/threeten/bp/temporal/IsoFields$Unit;",
        ">;",
        "Lorg/threeten/bp/temporal/TemporalUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/temporal/IsoFields$Unit;

.field public static final enum QUARTER_YEARS:Lorg/threeten/bp/temporal/IsoFields$Unit;

.field public static final enum WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/IsoFields$Unit;


# instance fields
.field private final duration:Lorg/threeten/bp/Duration;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 565
    new-instance v0, Lorg/threeten/bp/temporal/IsoFields$Unit;

    const-string v1, "WEEK_BASED_YEARS"

    const-string v2, "WeekBasedYears"

    const-wide/32 v4, 0x1e18558

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/threeten/bp/temporal/IsoFields$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/IsoFields$Unit;

    .line 566
    new-instance v0, Lorg/threeten/bp/temporal/IsoFields$Unit;

    const-string v1, "QUARTER_YEARS"

    const-string v2, "QuarterYears"

    const-wide/32 v4, 0x786156

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v3

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/threeten/bp/temporal/IsoFields$Unit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$Unit;->QUARTER_YEARS:Lorg/threeten/bp/temporal/IsoFields$Unit;

    .line 564
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/threeten/bp/temporal/IsoFields$Unit;

    sget-object v1, Lorg/threeten/bp/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Lorg/threeten/bp/temporal/IsoFields$Unit;

    aput-object v1, v0, v6

    sget-object v1, Lorg/threeten/bp/temporal/IsoFields$Unit;->QUARTER_YEARS:Lorg/threeten/bp/temporal/IsoFields$Unit;

    aput-object v1, v0, v7

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$Unit;->$VALUES:[Lorg/threeten/bp/temporal/IsoFields$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "estimatedDuration"    # Lorg/threeten/bp/Duration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/Duration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 571
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 572
    iput-object p3, p0, Lorg/threeten/bp/temporal/IsoFields$Unit;->name:Ljava/lang/String;

    .line 573
    iput-object p4, p0, Lorg/threeten/bp/temporal/IsoFields$Unit;->duration:Lorg/threeten/bp/Duration;

    .line 574
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/IsoFields$Unit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 564
    const-class v0, Lorg/threeten/bp/temporal/IsoFields$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/temporal/IsoFields$Unit;

    return-object v0
.end method

.method public static values()[Lorg/threeten/bp/temporal/IsoFields$Unit;
    .locals 1

    .prologue
    .line 564
    sget-object v0, Lorg/threeten/bp/temporal/IsoFields$Unit;->$VALUES:[Lorg/threeten/bp/temporal/IsoFields$Unit;

    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/IsoFields$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/temporal/IsoFields$Unit;

    return-object v0
.end method


# virtual methods
.method public addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 8
    .param p2, "periodToAdd"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .local p1, "temporal":Lorg/threeten/bp/temporal/Temporal;, "TR;"
    const-wide/16 v6, 0x100

    .line 604
    sget-object v2, Lorg/threeten/bp/temporal/IsoFields$1;->$SwitchMap$org$threeten$bp$temporal$IsoFields$Unit:[I

    invoke-virtual {p0}, Lorg/threeten/bp/temporal/IsoFields$Unit;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 612
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unreachable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 606
    :pswitch_0
    sget-object v2, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    invoke-interface {p1, v2}, Lorg/threeten/bp/temporal/Temporal;->get(Lorg/threeten/bp/temporal/TemporalField;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v0

    .line 607
    .local v0, "added":J
    sget-object v2, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    invoke-interface {p1, v2, v0, v1}, Lorg/threeten/bp/temporal/Temporal;->with(Lorg/threeten/bp/temporal/TemporalField;J)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v2

    .line 610
    .end local v0    # "added":J
    :goto_0
    return-object v2

    :pswitch_1
    div-long v2, p2, v6

    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v2

    rem-long v4, p2, v6

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    sget-object v3, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {v2, v4, v5, v3}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v2

    goto :goto_0

    .line 604
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J
    .locals 4
    .param p1, "temporal1"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "temporal2"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 618
    sget-object v0, Lorg/threeten/bp/temporal/IsoFields$1;->$SwitchMap$org$threeten$bp$temporal$IsoFields$Unit:[I

    invoke-virtual {p0}, Lorg/threeten/bp/temporal/IsoFields$Unit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 624
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :pswitch_0
    sget-object v0, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    invoke-interface {p2, v0}, Lorg/threeten/bp/temporal/Temporal;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v0

    sget-object v2, Lorg/threeten/bp/temporal/IsoFields;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/TemporalField;

    invoke-interface {p1, v2}, Lorg/threeten/bp/temporal/Temporal;->getLong(Lorg/threeten/bp/temporal/TemporalField;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v0

    .line 622
    :goto_0
    return-wide v0

    :pswitch_1
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-interface {p1, p2, v0}, Lorg/threeten/bp/temporal/Temporal;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    goto :goto_0

    .line 618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDuration()Lorg/threeten/bp/Duration;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lorg/threeten/bp/temporal/IsoFields$Unit;->duration:Lorg/threeten/bp/Duration;

    return-object v0
.end method

.method public isDateBased()Z
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x1

    return v0
.end method

.method public isDurationEstimated()Z
    .locals 1

    .prologue
    .line 583
    const/4 v0, 0x1

    return v0
.end method

.method public isSupportedBy(Lorg/threeten/bp/temporal/Temporal;)Z
    .locals 1
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 598
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->EPOCH_DAY:Lorg/threeten/bp/temporal/ChronoField;

    invoke-interface {p1, v0}, Lorg/threeten/bp/temporal/Temporal;->isSupported(Lorg/threeten/bp/temporal/TemporalField;)Z

    move-result v0

    return v0
.end method

.method public isTimeBased()Z
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lorg/threeten/bp/temporal/IsoFields$Unit;->name:Ljava/lang/String;

    return-object v0
.end method
