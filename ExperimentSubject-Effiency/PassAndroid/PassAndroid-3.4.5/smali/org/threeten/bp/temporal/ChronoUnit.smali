.class public final enum Lorg/threeten/bp/temporal/ChronoUnit;
.super Ljava/lang/Enum;
.source "ChronoUnit.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalUnit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/threeten/bp/temporal/ChronoUnit;",
        ">;",
        "Lorg/threeten/bp/temporal/TemporalUnit;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum CENTURIES:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum DECADES:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum ERAS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum HALF_DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum HOURS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum MICROS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum MILLENNIA:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum MILLIS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum MINUTES:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

.field public static final enum YEARS:Lorg/threeten/bp/temporal/ChronoUnit;


# instance fields
.field private final duration:Lorg/threeten/bp/Duration;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 59
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-string v1, "NANOS"

    const-string v2, "Nanos"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofNanos(J)Lorg/threeten/bp/Duration;

    move-result-object v3

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 64
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-string v1, "MICROS"

    const-string v2, "Micros"

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofNanos(J)Lorg/threeten/bp/Duration;

    move-result-object v3

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MICROS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 69
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-string v1, "MILLIS"

    const-string v2, "Millis"

    const-wide/32 v4, 0xf4240

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofNanos(J)Lorg/threeten/bp/Duration;

    move-result-object v3

    invoke-direct {v0, v1, v10, v2, v3}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MILLIS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 75
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-string v1, "SECONDS"

    const-string v2, "Seconds"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v3

    invoke-direct {v0, v1, v11, v2, v3}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 80
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-string v1, "MINUTES"

    const-string v2, "Minutes"

    const-wide/16 v4, 0x3c

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v3

    invoke-direct {v0, v1, v12, v2, v3}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MINUTES:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 85
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-string v1, "HOURS"

    const/4 v2, 0x5

    const-string v3, "Hours"

    const-wide/16 v4, 0xe10

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->HOURS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 90
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-string v1, "HALF_DAYS"

    const/4 v2, 0x6

    const-string v3, "HalfDays"

    const-wide/32 v4, 0xa8c0

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->HALF_DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 101
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-string v1, "DAYS"

    const/4 v2, 0x7

    const-string v3, "Days"

    const-wide/32 v4, 0x15180

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 108
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-string v1, "WEEKS"

    const/16 v2, 0x8

    const-string v3, "Weeks"

    const-wide/32 v4, 0x93a80

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 116
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-string v1, "MONTHS"

    const/16 v2, 0x9

    const-string v3, "Months"

    const-wide/32 v4, 0x282072

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 125
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-string v1, "YEARS"

    const/16 v2, 0xa

    const-string v3, "Years"

    const-wide/32 v4, 0x1e18558

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 133
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-string v1, "DECADES"

    const/16 v2, 0xb

    const-string v3, "Decades"

    const-wide/32 v4, 0x12cf3570

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->DECADES:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 141
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-string v1, "CENTURIES"

    const/16 v2, 0xc

    const-string v3, "Centuries"

    const-wide v4, 0xbc181660L

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->CENTURIES:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 149
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-string v1, "MILLENNIA"

    const/16 v2, 0xd

    const-string v3, "Millennia"

    const-wide v4, 0x758f0dfc0L

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->MILLENNIA:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 158
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-string v1, "ERAS"

    const/16 v2, 0xe

    const-string v3, "Eras"

    const-wide v4, 0x701ce172277000L

    invoke-static {v4, v5}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->ERAS:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 166
    new-instance v0, Lorg/threeten/bp/temporal/ChronoUnit;

    const-string v1, "FOREVER"

    const/16 v2, 0xf

    const-string v3, "Forever"

    const-wide v4, 0x7fffffffffffffffL

    const-wide/32 v6, 0x3b9ac9ff

    invoke-static {v4, v5, v6, v7}, Lorg/threeten/bp/Duration;->ofSeconds(JJ)Lorg/threeten/bp/Duration;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/threeten/bp/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/threeten/bp/Duration;)V

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    .line 53
    const/16 v0, 0x10

    new-array v0, v0, [Lorg/threeten/bp/temporal/ChronoUnit;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->NANOS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v1, v0, v8

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->MICROS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v1, v0, v9

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->MILLIS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v1, v0, v10

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->SECONDS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v1, v0, v11

    sget-object v1, Lorg/threeten/bp/temporal/ChronoUnit;->MINUTES:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->HOURS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->HALF_DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->WEEKS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->MONTHS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->YEARS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->DECADES:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->CENTURIES:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->MILLENNIA:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->ERAS:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    aput-object v2, v0, v1

    sput-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->$VALUES:[Lorg/threeten/bp/temporal/ChronoUnit;

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
    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 172
    iput-object p3, p0, Lorg/threeten/bp/temporal/ChronoUnit;->name:Ljava/lang/String;

    .line 173
    iput-object p4, p0, Lorg/threeten/bp/temporal/ChronoUnit;->duration:Lorg/threeten/bp/Duration;

    .line 174
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/ChronoUnit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/temporal/ChronoUnit;

    return-object v0
.end method

.method public static values()[Lorg/threeten/bp/temporal/ChronoUnit;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->$VALUES:[Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/ChronoUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/temporal/ChronoUnit;

    return-object v0
.end method


# virtual methods
.method public addTo(Lorg/threeten/bp/temporal/Temporal;J)Lorg/threeten/bp/temporal/Temporal;
    .locals 2
    .param p2, "periodToAdd"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lorg/threeten/bp/temporal/Temporal;",
            ">(TR;J)TR;"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "dateTime":Lorg/threeten/bp/temporal/Temporal;, "TR;"
    invoke-interface {p1, p2, p3, p0}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;

    move-result-object v0

    return-object v0
.end method

.method public between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)J
    .locals 2
    .param p1, "temporal1"    # Lorg/threeten/bp/temporal/Temporal;
    .param p2, "temporal2"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    .line 259
    invoke-interface {p1, p2, p0}, Lorg/threeten/bp/temporal/Temporal;->until(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/TemporalUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()Lorg/threeten/bp/Duration;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/threeten/bp/temporal/ChronoUnit;->duration:Lorg/threeten/bp/Duration;

    return-object v0
.end method

.method public isDateBased()Z
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDurationEstimated()Z
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/ChronoUnit;->isDateBased()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedBy(Lorg/threeten/bp/temporal/Temporal;)Z
    .locals 6
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/Temporal;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 228
    sget-object v4, Lorg/threeten/bp/temporal/ChronoUnit;->FOREVER:Lorg/threeten/bp/temporal/ChronoUnit;

    if-ne p0, v4, :cond_0

    .line 245
    :goto_0
    return v2

    .line 231
    :cond_0
    instance-of v4, p1, Lorg/threeten/bp/chrono/ChronoLocalDate;

    if-eqz v4, :cond_1

    .line 232
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/ChronoUnit;->isDateBased()Z

    move-result v2

    goto :goto_0

    .line 234
    :cond_1
    instance-of v4, p1, Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    if-nez v4, :cond_2

    instance-of v4, p1, Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 235
    goto :goto_0

    .line 238
    :cond_3
    const-wide/16 v4, 0x1

    :try_start_0
    invoke-interface {p1, v4, v5, p0}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 239
    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-wide/16 v4, -0x1

    :try_start_1
    invoke-interface {p1, v4, v5, p0}, Lorg/threeten/bp/temporal/Temporal;->plus(JLorg/threeten/bp/temporal/TemporalUnit;)Lorg/threeten/bp/temporal/Temporal;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    .line 243
    goto :goto_0

    .line 244
    :catch_1
    move-exception v1

    .line 245
    .local v1, "ex2":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public isTimeBased()Z
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lorg/threeten/bp/temporal/ChronoUnit;->DAYS:Lorg/threeten/bp/temporal/ChronoUnit;

    invoke-virtual {p0, v0}, Lorg/threeten/bp/temporal/ChronoUnit;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/threeten/bp/temporal/ChronoUnit;->name:Ljava/lang/String;

    return-object v0
.end method
