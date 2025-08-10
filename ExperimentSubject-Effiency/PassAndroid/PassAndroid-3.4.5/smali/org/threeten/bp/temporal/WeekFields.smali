.class public final Lorg/threeten/bp/temporal/WeekFields;
.super Ljava/lang/Object;
.source "WeekFields.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;
    }
.end annotation


# static fields
.field private static final CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/threeten/bp/temporal/WeekFields;",
            ">;"
        }
    .end annotation
.end field

.field public static final ISO:Lorg/threeten/bp/temporal/WeekFields;

.field public static final SUNDAY_START:Lorg/threeten/bp/temporal/WeekFields;

.field private static final serialVersionUID:J = -0x1056d36d74f0f639L


# instance fields
.field private final transient dayOfWeek:Lorg/threeten/bp/temporal/TemporalField;

.field private final firstDayOfWeek:Lorg/threeten/bp/DayOfWeek;

.field private final minimalDays:I

.field private final transient weekBasedYear:Lorg/threeten/bp/temporal/TemporalField;

.field private final transient weekOfMonth:Lorg/threeten/bp/temporal/TemporalField;

.field private final transient weekOfWeekBasedYear:Lorg/threeten/bp/temporal/TemporalField;

.field private final transient weekOfYear:Lorg/threeten/bp/temporal/TemporalField;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 130
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x2

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lorg/threeten/bp/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    .line 144
    new-instance v0, Lorg/threeten/bp/temporal/WeekFields;

    sget-object v1, Lorg/threeten/bp/DayOfWeek;->MONDAY:Lorg/threeten/bp/DayOfWeek;

    invoke-direct {v0, v1, v3}, Lorg/threeten/bp/temporal/WeekFields;-><init>(Lorg/threeten/bp/DayOfWeek;I)V

    sput-object v0, Lorg/threeten/bp/temporal/WeekFields;->ISO:Lorg/threeten/bp/temporal/WeekFields;

    .line 153
    sget-object v0, Lorg/threeten/bp/DayOfWeek;->SUNDAY:Lorg/threeten/bp/DayOfWeek;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/threeten/bp/temporal/WeekFields;->of(Lorg/threeten/bp/DayOfWeek;I)Lorg/threeten/bp/temporal/WeekFields;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/temporal/WeekFields;->SUNDAY_START:Lorg/threeten/bp/temporal/WeekFields;

    return-void
.end method

.method private constructor <init>(Lorg/threeten/bp/DayOfWeek;I)V
    .locals 2
    .param p1, "firstDayOfWeek"    # Lorg/threeten/bp/DayOfWeek;
    .param p2, "minimalDaysInFirstWeek"    # I

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-static {p0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->ofDayOfWeekField(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/temporal/WeekFields;->dayOfWeek:Lorg/threeten/bp/temporal/TemporalField;

    .line 176
    invoke-static {p0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->ofWeekOfMonthField(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/temporal/WeekFields;->weekOfMonth:Lorg/threeten/bp/temporal/TemporalField;

    .line 180
    invoke-static {p0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->ofWeekOfYearField(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/temporal/WeekFields;->weekOfYear:Lorg/threeten/bp/temporal/TemporalField;

    .line 184
    invoke-static {p0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->ofWeekOfWeekBasedYearField(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/temporal/WeekFields;->weekOfWeekBasedYear:Lorg/threeten/bp/temporal/TemporalField;

    .line 188
    invoke-static {p0}, Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;->ofWeekBasedYearField(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/WeekFields$ComputedDayOfField;

    move-result-object v0

    iput-object v0, p0, Lorg/threeten/bp/temporal/WeekFields;->weekBasedYear:Lorg/threeten/bp/temporal/TemporalField;

    .line 250
    const-string v0, "firstDayOfWeek"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x7

    if-le p2, v0, :cond_1

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimal number of days is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    iput-object p1, p0, Lorg/threeten/bp/temporal/WeekFields;->firstDayOfWeek:Lorg/threeten/bp/DayOfWeek;

    .line 255
    iput p2, p0, Lorg/threeten/bp/temporal/WeekFields;->minimalDays:I

    .line 256
    return-void
.end method

.method static synthetic access$000(Lorg/threeten/bp/temporal/WeekFields;)Lorg/threeten/bp/temporal/TemporalField;
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/temporal/WeekFields;

    .prologue
    .line 118
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields;->weekOfWeekBasedYear:Lorg/threeten/bp/temporal/TemporalField;

    return-object v0
.end method

.method public static of(Ljava/util/Locale;)Lorg/threeten/bp/temporal/WeekFields;
    .locals 8
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 199
    const-string v5, "locale"

    invoke-static {p0, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    new-instance v3, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local p0    # "locale":Ljava/util/Locale;
    .local v3, "locale":Ljava/util/Locale;
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 204
    .local v2, "gcal":Ljava/util/GregorianCalendar;
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v0

    .line 205
    .local v0, "calDow":I
    sget-object v5, Lorg/threeten/bp/DayOfWeek;->SUNDAY:Lorg/threeten/bp/DayOfWeek;

    add-int/lit8 v6, v0, -0x1

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lorg/threeten/bp/DayOfWeek;->plus(J)Lorg/threeten/bp/DayOfWeek;

    move-result-object v1

    .line 206
    .local v1, "dow":Lorg/threeten/bp/DayOfWeek;
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v4

    .line 207
    .local v4, "minDays":I
    invoke-static {v1, v4}, Lorg/threeten/bp/temporal/WeekFields;->of(Lorg/threeten/bp/DayOfWeek;I)Lorg/threeten/bp/temporal/WeekFields;

    move-result-object v5

    return-object v5
.end method

.method public static of(Lorg/threeten/bp/DayOfWeek;I)Lorg/threeten/bp/temporal/WeekFields;
    .locals 4
    .param p0, "firstDayOfWeek"    # Lorg/threeten/bp/DayOfWeek;
    .param p1, "minimalDaysInFirstWeek"    # I

    .prologue
    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/threeten/bp/DayOfWeek;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lorg/threeten/bp/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/temporal/WeekFields;

    .line 233
    .local v1, "rules":Lorg/threeten/bp/temporal/WeekFields;
    if-nez v1, :cond_0

    .line 234
    new-instance v1, Lorg/threeten/bp/temporal/WeekFields;

    .end local v1    # "rules":Lorg/threeten/bp/temporal/WeekFields;
    invoke-direct {v1, p0, p1}, Lorg/threeten/bp/temporal/WeekFields;-><init>(Lorg/threeten/bp/DayOfWeek;I)V

    .line 235
    .restart local v1    # "rules":Lorg/threeten/bp/temporal/WeekFields;
    sget-object v2, Lorg/threeten/bp/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v2, Lorg/threeten/bp/temporal/WeekFields;->CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "rules":Lorg/threeten/bp/temporal/WeekFields;
    check-cast v1, Lorg/threeten/bp/temporal/WeekFields;

    .line 238
    .restart local v1    # "rules":Lorg/threeten/bp/temporal/WeekFields;
    :cond_0
    return-object v1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 266
    :try_start_0
    iget-object v1, p0, Lorg/threeten/bp/temporal/WeekFields;->firstDayOfWeek:Lorg/threeten/bp/DayOfWeek;

    iget v2, p0, Lorg/threeten/bp/temporal/WeekFields;->minimalDays:I

    invoke-static {v1, v2}, Lorg/threeten/bp/temporal/WeekFields;->of(Lorg/threeten/bp/DayOfWeek;I)Lorg/threeten/bp/temporal/WeekFields;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid WeekFields"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public dayOfWeek()Lorg/threeten/bp/temporal/TemporalField;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields;->dayOfWeek:Lorg/threeten/bp/temporal/TemporalField;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 518
    if-ne p0, p1, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v0

    .line 521
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/temporal/WeekFields;

    if-eqz v2, :cond_2

    .line 522
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/WeekFields;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 524
    goto :goto_0
.end method

.method public getFirstDayOfWeek()Lorg/threeten/bp/DayOfWeek;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields;->firstDayOfWeek:Lorg/threeten/bp/DayOfWeek;

    return-object v0
.end method

.method public getMinimalDaysInFirstWeek()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lorg/threeten/bp/temporal/WeekFields;->minimalDays:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields;->firstDayOfWeek:Lorg/threeten/bp/DayOfWeek;

    invoke-virtual {v0}, Lorg/threeten/bp/DayOfWeek;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget v1, p0, Lorg/threeten/bp/temporal/WeekFields;->minimalDays:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeekFields["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/temporal/WeekFields;->firstDayOfWeek:Lorg/threeten/bp/DayOfWeek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/threeten/bp/temporal/WeekFields;->minimalDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public weekBasedYear()Lorg/threeten/bp/temporal/TemporalField;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields;->weekBasedYear:Lorg/threeten/bp/temporal/TemporalField;

    return-object v0
.end method

.method public weekOfMonth()Lorg/threeten/bp/temporal/TemporalField;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields;->weekOfMonth:Lorg/threeten/bp/temporal/TemporalField;

    return-object v0
.end method

.method public weekOfWeekBasedYear()Lorg/threeten/bp/temporal/TemporalField;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields;->weekOfWeekBasedYear:Lorg/threeten/bp/temporal/TemporalField;

    return-object v0
.end method

.method public weekOfYear()Lorg/threeten/bp/temporal/TemporalField;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lorg/threeten/bp/temporal/WeekFields;->weekOfYear:Lorg/threeten/bp/temporal/TemporalField;

    return-object v0
.end method
