.class abstract enum Lorg/threeten/bp/temporal/IsoFields$Field;
.super Ljava/lang/Enum;
.source "IsoFields.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalField;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/temporal/IsoFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/threeten/bp/temporal/IsoFields$Field;",
        ">;",
        "Lorg/threeten/bp/temporal/TemporalField;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/threeten/bp/temporal/IsoFields$Field;

.field public static final enum DAY_OF_QUARTER:Lorg/threeten/bp/temporal/IsoFields$Field;

.field private static final QUARTER_DAYS:[I

.field public static final enum QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

.field public static final enum WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

.field public static final enum WEEK_OF_WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    new-instance v0, Lorg/threeten/bp/temporal/IsoFields$Field$1;

    const-string v1, "DAY_OF_QUARTER"

    invoke-direct {v0, v1, v2}, Lorg/threeten/bp/temporal/IsoFields$Field$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->DAY_OF_QUARTER:Lorg/threeten/bp/temporal/IsoFields$Field;

    .line 298
    new-instance v0, Lorg/threeten/bp/temporal/IsoFields$Field$2;

    const-string v1, "QUARTER_OF_YEAR"

    invoke-direct {v0, v1, v3}, Lorg/threeten/bp/temporal/IsoFields$Field$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    .line 339
    new-instance v0, Lorg/threeten/bp/temporal/IsoFields$Field$3;

    const-string v1, "WEEK_OF_WEEK_BASED_YEAR"

    invoke-direct {v0, v1, v4}, Lorg/threeten/bp/temporal/IsoFields$Field$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    .line 425
    new-instance v0, Lorg/threeten/bp/temporal/IsoFields$Field$4;

    const-string v1, "WEEK_BASED_YEAR"

    invoke-direct {v0, v1, v5}, Lorg/threeten/bp/temporal/IsoFields$Field$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    .line 205
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/threeten/bp/temporal/IsoFields$Field;

    sget-object v1, Lorg/threeten/bp/temporal/IsoFields$Field;->DAY_OF_QUARTER:Lorg/threeten/bp/temporal/IsoFields$Field;

    aput-object v1, v0, v2

    sget-object v1, Lorg/threeten/bp/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    aput-object v1, v0, v3

    sget-object v1, Lorg/threeten/bp/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    aput-object v1, v0, v4

    sget-object v1, Lorg/threeten/bp/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Lorg/threeten/bp/temporal/IsoFields$Field;

    aput-object v1, v0, v5

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->$VALUES:[Lorg/threeten/bp/temporal/IsoFields$Field;

    .line 490
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->QUARTER_DAYS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        0xb5
        0x111
        0x0
        0x5b
        0xb6
        0x112
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/threeten/bp/temporal/IsoFields$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/threeten/bp/temporal/IsoFields$1;

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lorg/threeten/bp/temporal/IsoFields$Field;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/threeten/bp/temporal/TemporalAccessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 205
    invoke-static {p0}, Lorg/threeten/bp/temporal/IsoFields$Field;->isIso(Lorg/threeten/bp/temporal/TemporalAccessor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->QUARTER_DAYS:[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 205
    invoke-static {p0}, Lorg/threeten/bp/temporal/IsoFields$Field;->getWeekRange(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/threeten/bp/LocalDate;)I
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 205
    invoke-static {p0}, Lorg/threeten/bp/temporal/IsoFields$Field;->getWeek(Lorg/threeten/bp/LocalDate;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/threeten/bp/LocalDate;)I
    .locals 1
    .param p0, "x0"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 205
    invoke-static {p0}, Lorg/threeten/bp/temporal/IsoFields$Field;->getWeekBasedYear(Lorg/threeten/bp/LocalDate;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 205
    invoke-static {p0}, Lorg/threeten/bp/temporal/IsoFields$Field;->getWeekRange(I)I

    move-result v0

    return v0
.end method

.method private static getWeek(Lorg/threeten/bp/LocalDate;)I
    .locals 10
    .param p0, "date"    # Lorg/threeten/bp/LocalDate;

    .prologue
    const/4 v8, -0x3

    .line 520
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v7

    invoke-virtual {v7}, Lorg/threeten/bp/DayOfWeek;->ordinal()I

    move-result v1

    .line 521
    .local v1, "dow0":I
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 522
    .local v2, "doy0":I
    rsub-int/lit8 v7, v1, 0x3

    add-int v3, v2, v7

    .line 523
    .local v3, "doyThu0":I
    div-int/lit8 v0, v3, 0x7

    .line 524
    .local v0, "alignedWeek":I
    mul-int/lit8 v7, v0, 0x7

    sub-int v5, v3, v7

    .line 525
    .local v5, "firstThuDoy0":I
    add-int/lit8 v4, v5, -0x3

    .line 526
    .local v4, "firstMonDoy0":I
    if-ge v4, v8, :cond_0

    .line 527
    add-int/lit8 v4, v4, 0x7

    .line 529
    :cond_0
    if-ge v2, v4, :cond_2

    .line 530
    const/16 v7, 0xb4

    invoke-virtual {p0, v7}, Lorg/threeten/bp/LocalDate;->withDayOfYear(I)Lorg/threeten/bp/LocalDate;

    move-result-object v7

    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/threeten/bp/LocalDate;->minusYears(J)Lorg/threeten/bp/LocalDate;

    move-result-object v7

    invoke-static {v7}, Lorg/threeten/bp/temporal/IsoFields$Field;->getWeekRange(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v7

    invoke-virtual {v7}, Lorg/threeten/bp/temporal/ValueRange;->getMaximum()J

    move-result-wide v8

    long-to-int v6, v8

    .line 538
    :cond_1
    :goto_0
    return v6

    .line 532
    :cond_2
    sub-int v7, v2, v4

    div-int/lit8 v7, v7, 0x7

    add-int/lit8 v6, v7, 0x1

    .line 533
    .local v6, "week":I
    const/16 v7, 0x35

    if-ne v6, v7, :cond_1

    .line 534
    if-eq v4, v8, :cond_3

    const/4 v7, -0x2

    if-ne v4, v7, :cond_4

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const/4 v7, 0x1

    :goto_1
    if-nez v7, :cond_1

    .line 535
    const/4 v6, 0x1

    goto :goto_0

    .line 534
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private static getWeekBasedYear(Lorg/threeten/bp/LocalDate;)I
    .locals 5
    .param p0, "date"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 542
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getYear()I

    move-result v2

    .line 543
    .local v2, "year":I
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfYear()I

    move-result v1

    .line 544
    .local v1, "doy":I
    const/4 v3, 0x3

    if-gt v1, v3, :cond_1

    .line 545
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/DayOfWeek;->ordinal()I

    move-result v0

    .line 546
    .local v0, "dow":I
    sub-int v3, v1, v0

    const/4 v4, -0x2

    if-ge v3, v4, :cond_0

    .line 547
    add-int/lit8 v2, v2, -0x1

    .line 556
    .end local v0    # "dow":I
    :cond_0
    :goto_0
    return v2

    .line 549
    :cond_1
    const/16 v3, 0x16b

    if-lt v1, v3, :cond_0

    .line 550
    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v3

    invoke-virtual {v3}, Lorg/threeten/bp/DayOfWeek;->ordinal()I

    move-result v0

    .line 551
    .restart local v0    # "dow":I
    add-int/lit16 v4, v1, -0x16b

    invoke-virtual {p0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    sub-int v1, v4, v3

    .line 552
    sub-int v3, v1, v0

    if-ltz v3, :cond_0

    .line 553
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getWeekRange(I)I
    .locals 3
    .param p0, "wby"    # I

    .prologue
    const/4 v1, 0x1

    .line 511
    invoke-static {p0, v1, v1}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v0

    .line 513
    .local v0, "date":Lorg/threeten/bp/LocalDate;
    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/DayOfWeek;->THURSDAY:Lorg/threeten/bp/DayOfWeek;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->getDayOfWeek()Lorg/threeten/bp/DayOfWeek;

    move-result-object v1

    sget-object v2, Lorg/threeten/bp/DayOfWeek;->WEDNESDAY:Lorg/threeten/bp/DayOfWeek;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDate;->isLeapYear()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    :cond_0
    const/16 v1, 0x35

    .line 516
    :goto_0
    return v1

    :cond_1
    const/16 v1, 0x34

    goto :goto_0
.end method

.method private static getWeekRange(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 6
    .param p0, "date"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 506
    invoke-static {p0}, Lorg/threeten/bp/temporal/IsoFields$Field;->getWeekBasedYear(Lorg/threeten/bp/LocalDate;)I

    move-result v0

    .line 507
    .local v0, "wby":I
    const-wide/16 v2, 0x1

    invoke-static {v0}, Lorg/threeten/bp/temporal/IsoFields$Field;->getWeekRange(I)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lorg/threeten/bp/temporal/ValueRange;->of(JJ)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v1

    return-object v1
.end method

.method private static isIso(Lorg/threeten/bp/temporal/TemporalAccessor;)Z
    .locals 2
    .param p0, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 502
    invoke-static {p0}, Lorg/threeten/bp/chrono/Chronology;->from(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object v0

    sget-object v1, Lorg/threeten/bp/chrono/IsoChronology;->INSTANCE:Lorg/threeten/bp/chrono/IsoChronology;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/temporal/IsoFields$Field;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 205
    const-class v0, Lorg/threeten/bp/temporal/IsoFields$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/temporal/IsoFields$Field;

    return-object v0
.end method

.method public static values()[Lorg/threeten/bp/temporal/IsoFields$Field;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lorg/threeten/bp/temporal/IsoFields$Field;->$VALUES:[Lorg/threeten/bp/temporal/IsoFields$Field;

    invoke-virtual {v0}, [Lorg/threeten/bp/temporal/IsoFields$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/temporal/IsoFields$Field;

    return-object v0
.end method


# virtual methods
.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 479
    const-string v0, "locale"

    invoke-static {p1, v0}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 480
    invoke-virtual {p0}, Lorg/threeten/bp/temporal/IsoFields$Field;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDateBased()Z
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x1

    return v0
.end method

.method public isTimeBased()Z
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public resolve(Ljava/util/Map;Lorg/threeten/bp/temporal/TemporalAccessor;Lorg/threeten/bp/format/ResolverStyle;)Lorg/threeten/bp/temporal/TemporalAccessor;
    .locals 1
    .param p2, "partialTemporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;
    .param p3, "resolverStyle"    # Lorg/threeten/bp/format/ResolverStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/threeten/bp/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/threeten/bp/temporal/TemporalAccessor;",
            "Lorg/threeten/bp/format/ResolverStyle;",
            ")",
            "Lorg/threeten/bp/temporal/TemporalAccessor;"
        }
    .end annotation

    .prologue
    .line 486
    .local p1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/threeten/bp/temporal/TemporalField;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    return-object v0
.end method
