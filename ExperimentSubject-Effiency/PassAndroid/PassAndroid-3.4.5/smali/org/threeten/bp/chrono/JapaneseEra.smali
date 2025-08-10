.class public final Lorg/threeten/bp/chrono/JapaneseEra;
.super Lorg/threeten/bp/jdk8/DefaultInterfaceEra;
.source "JapaneseEra.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ADDITIONAL_VALUE:I = 0x3

.field static final ERA_OFFSET:I = 0x2

.field public static final HEISEI:Lorg/threeten/bp/chrono/JapaneseEra;

.field private static final KNOWN_ERAS:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lorg/threeten/bp/chrono/JapaneseEra;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEIJI:Lorg/threeten/bp/chrono/JapaneseEra;

.field public static final SHOWA:Lorg/threeten/bp/chrono/JapaneseEra;

.field public static final TAISHO:Lorg/threeten/bp/chrono/JapaneseEra;

.field private static final serialVersionUID:J = 0x145a0d680453ed8aL


# instance fields
.field private final eraValue:I

.field private final transient name:Ljava/lang/String;

.field private final transient since:Lorg/threeten/bp/LocalDate;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 77
    new-instance v1, Lorg/threeten/bp/chrono/JapaneseEra;

    const/4 v2, -0x1

    const/16 v3, 0x74c

    const/16 v4, 0x9

    invoke-static {v3, v4, v8}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v3

    const-string v4, "Meiji"

    invoke-direct {v1, v2, v3, v4}, Lorg/threeten/bp/chrono/JapaneseEra;-><init>(ILorg/threeten/bp/LocalDate;Ljava/lang/String;)V

    sput-object v1, Lorg/threeten/bp/chrono/JapaneseEra;->MEIJI:Lorg/threeten/bp/chrono/JapaneseEra;

    .line 82
    new-instance v1, Lorg/threeten/bp/chrono/JapaneseEra;

    const/16 v2, 0x778

    const/4 v3, 0x7

    const/16 v4, 0x1e

    invoke-static {v2, v3, v4}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    const-string v3, "Taisho"

    invoke-direct {v1, v6, v2, v3}, Lorg/threeten/bp/chrono/JapaneseEra;-><init>(ILorg/threeten/bp/LocalDate;Ljava/lang/String;)V

    sput-object v1, Lorg/threeten/bp/chrono/JapaneseEra;->TAISHO:Lorg/threeten/bp/chrono/JapaneseEra;

    .line 87
    new-instance v1, Lorg/threeten/bp/chrono/JapaneseEra;

    const/16 v2, 0x786

    const/16 v3, 0xc

    const/16 v4, 0x19

    invoke-static {v2, v3, v4}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    const-string v3, "Showa"

    invoke-direct {v1, v5, v2, v3}, Lorg/threeten/bp/chrono/JapaneseEra;-><init>(ILorg/threeten/bp/LocalDate;Ljava/lang/String;)V

    sput-object v1, Lorg/threeten/bp/chrono/JapaneseEra;->SHOWA:Lorg/threeten/bp/chrono/JapaneseEra;

    .line 92
    new-instance v1, Lorg/threeten/bp/chrono/JapaneseEra;

    const/16 v2, 0x7c5

    invoke-static {v2, v5, v8}, Lorg/threeten/bp/LocalDate;->of(III)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    const-string v3, "Heisei"

    invoke-direct {v1, v7, v2, v3}, Lorg/threeten/bp/chrono/JapaneseEra;-><init>(ILorg/threeten/bp/LocalDate;Ljava/lang/String;)V

    sput-object v1, Lorg/threeten/bp/chrono/JapaneseEra;->HEISEI:Lorg/threeten/bp/chrono/JapaneseEra;

    .line 107
    const/4 v1, 0x4

    new-array v0, v1, [Lorg/threeten/bp/chrono/JapaneseEra;

    .line 108
    .local v0, "array":[Lorg/threeten/bp/chrono/JapaneseEra;
    sget-object v1, Lorg/threeten/bp/chrono/JapaneseEra;->MEIJI:Lorg/threeten/bp/chrono/JapaneseEra;

    aput-object v1, v0, v6

    .line 109
    sget-object v1, Lorg/threeten/bp/chrono/JapaneseEra;->TAISHO:Lorg/threeten/bp/chrono/JapaneseEra;

    aput-object v1, v0, v5

    .line 110
    sget-object v1, Lorg/threeten/bp/chrono/JapaneseEra;->SHOWA:Lorg/threeten/bp/chrono/JapaneseEra;

    aput-object v1, v0, v7

    .line 111
    const/4 v1, 0x3

    sget-object v2, Lorg/threeten/bp/chrono/JapaneseEra;->HEISEI:Lorg/threeten/bp/chrono/JapaneseEra;

    aput-object v2, v0, v1

    .line 112
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/threeten/bp/chrono/JapaneseEra;->KNOWN_ERAS:Ljava/util/concurrent/atomic/AtomicReference;

    .line 113
    return-void
.end method

.method private constructor <init>(ILorg/threeten/bp/LocalDate;Ljava/lang/String;)V
    .locals 0
    .param p1, "eraValue"    # I
    .param p2, "since"    # Lorg/threeten/bp/LocalDate;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0}, Lorg/threeten/bp/jdk8/DefaultInterfaceEra;-><init>()V

    .line 134
    iput p1, p0, Lorg/threeten/bp/chrono/JapaneseEra;->eraValue:I

    .line 135
    iput-object p2, p0, Lorg/threeten/bp/chrono/JapaneseEra;->since:Lorg/threeten/bp/LocalDate;

    .line 136
    iput-object p3, p0, Lorg/threeten/bp/chrono/JapaneseEra;->name:Ljava/lang/String;

    .line 137
    return-void
.end method

.method static from(Lorg/threeten/bp/LocalDate;)Lorg/threeten/bp/chrono/JapaneseEra;
    .locals 6
    .param p0, "date"    # Lorg/threeten/bp/LocalDate;

    .prologue
    .line 256
    sget-object v3, Lorg/threeten/bp/chrono/JapaneseEra;->MEIJI:Lorg/threeten/bp/chrono/JapaneseEra;

    iget-object v3, v3, Lorg/threeten/bp/chrono/JapaneseEra;->since:Lorg/threeten/bp/LocalDate;

    invoke-virtual {p0, v3}, Lorg/threeten/bp/LocalDate;->isBefore(Lorg/threeten/bp/chrono/ChronoLocalDate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    new-instance v3, Lorg/threeten/bp/DateTimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Date too early: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 259
    :cond_0
    sget-object v3, Lorg/threeten/bp/chrono/JapaneseEra;->KNOWN_ERAS:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/threeten/bp/chrono/JapaneseEra;

    .line 260
    .local v2, "known":[Lorg/threeten/bp/chrono/JapaneseEra;
    array-length v3, v2

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 261
    aget-object v0, v2, v1

    .line 262
    .local v0, "era":Lorg/threeten/bp/chrono/JapaneseEra;
    iget-object v3, v0, Lorg/threeten/bp/chrono/JapaneseEra;->since:Lorg/threeten/bp/LocalDate;

    invoke-virtual {p0, v3}, Lorg/threeten/bp/LocalDate;->compareTo(Lorg/threeten/bp/chrono/ChronoLocalDate;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 266
    .end local v0    # "era":Lorg/threeten/bp/chrono/JapaneseEra;
    :goto_1
    return-object v0

    .line 260
    .restart local v0    # "era":Lorg/threeten/bp/chrono/JapaneseEra;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 266
    .end local v0    # "era":Lorg/threeten/bp/chrono/JapaneseEra;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static of(I)Lorg/threeten/bp/chrono/JapaneseEra;
    .locals 3
    .param p0, "japaneseEra"    # I

    .prologue
    .line 204
    sget-object v1, Lorg/threeten/bp/chrono/JapaneseEra;->KNOWN_ERAS:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/chrono/JapaneseEra;

    .line 205
    .local v0, "known":[Lorg/threeten/bp/chrono/JapaneseEra;
    sget-object v1, Lorg/threeten/bp/chrono/JapaneseEra;->MEIJI:Lorg/threeten/bp/chrono/JapaneseEra;

    iget v1, v1, Lorg/threeten/bp/chrono/JapaneseEra;->eraValue:I

    if-lt p0, v1, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    iget v1, v1, Lorg/threeten/bp/chrono/JapaneseEra;->eraValue:I

    if-le p0, v1, :cond_1

    .line 206
    :cond_0
    new-instance v1, Lorg/threeten/bp/DateTimeException;

    const-string v2, "japaneseEra is invalid"

    invoke-direct {v1, v2}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_1
    invoke-static {p0}, Lorg/threeten/bp/chrono/JapaneseEra;->ordinal(I)I

    move-result v1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private static ordinal(I)I
    .locals 1
    .param p0, "eraValue"    # I

    .prologue
    .line 276
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/JapaneseEra;
    .locals 2
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 340
    .local v0, "eraValue":B
    invoke-static {v0}, Lorg/threeten/bp/chrono/JapaneseEra;->of(I)Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v1

    return-object v1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    iget v2, p0, Lorg/threeten/bp/chrono/JapaneseEra;->eraValue:I

    invoke-static {v2}, Lorg/threeten/bp/chrono/JapaneseEra;->of(I)Lorg/threeten/bp/chrono/JapaneseEra;
    :try_end_0
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Lorg/threeten/bp/DateTimeException;
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Invalid era"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "ex":Ljava/io/InvalidObjectException;
    invoke-virtual {v1, v0}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 153
    throw v1
.end method

.method public static registerEra(Lorg/threeten/bp/LocalDate;Ljava/lang/String;)Lorg/threeten/bp/chrono/JapaneseEra;
    .locals 5
    .param p0, "since"    # Lorg/threeten/bp/LocalDate;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 174
    sget-object v3, Lorg/threeten/bp/chrono/JapaneseEra;->KNOWN_ERAS:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/threeten/bp/chrono/JapaneseEra;

    .line 175
    .local v1, "known":[Lorg/threeten/bp/chrono/JapaneseEra;
    array-length v3, v1

    if-le v3, v4, :cond_0

    .line 176
    new-instance v3, Lorg/threeten/bp/DateTimeException;

    const-string v4, "Only one additional Japanese era can be added"

    invoke-direct {v3, v4}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    :cond_0
    const-string v3, "since"

    invoke-static {p0, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    const-string v3, "name"

    invoke-static {p1, v3}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    sget-object v3, Lorg/threeten/bp/chrono/JapaneseEra;->HEISEI:Lorg/threeten/bp/chrono/JapaneseEra;

    iget-object v3, v3, Lorg/threeten/bp/chrono/JapaneseEra;->since:Lorg/threeten/bp/LocalDate;

    invoke-virtual {p0, v3}, Lorg/threeten/bp/LocalDate;->isAfter(Lorg/threeten/bp/chrono/ChronoLocalDate;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    new-instance v3, Lorg/threeten/bp/DateTimeException;

    const-string v4, "Invalid since date for additional Japanese era, must be after Heisei"

    invoke-direct {v3, v4}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_1
    new-instance v0, Lorg/threeten/bp/chrono/JapaneseEra;

    const/4 v3, 0x3

    invoke-direct {v0, v3, p0, p1}, Lorg/threeten/bp/chrono/JapaneseEra;-><init>(ILorg/threeten/bp/LocalDate;Ljava/lang/String;)V

    .line 184
    .local v0, "era":Lorg/threeten/bp/chrono/JapaneseEra;
    const/4 v3, 0x5

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/threeten/bp/chrono/JapaneseEra;

    .line 185
    .local v2, "newArray":[Lorg/threeten/bp/chrono/JapaneseEra;
    aput-object v0, v2, v4

    .line 186
    sget-object v3, Lorg/threeten/bp/chrono/JapaneseEra;->KNOWN_ERAS:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 187
    new-instance v3, Lorg/threeten/bp/DateTimeException;

    const-string v4, "Only one additional Japanese era can be added"

    invoke-direct {v3, v4}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 189
    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/threeten/bp/chrono/JapaneseEra;
    .locals 8
    .param p0, "japaneseEra"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string v5, "japaneseEra"

    invoke-static {p0, v5}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    sget-object v5, Lorg/threeten/bp/chrono/JapaneseEra;->KNOWN_ERAS:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/threeten/bp/chrono/JapaneseEra;

    .line 224
    .local v3, "known":[Lorg/threeten/bp/chrono/JapaneseEra;
    move-object v0, v3

    .local v0, "arr$":[Lorg/threeten/bp/chrono/JapaneseEra;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 225
    .local v1, "era":Lorg/threeten/bp/chrono/JapaneseEra;
    iget-object v5, v1, Lorg/threeten/bp/chrono/JapaneseEra;->name:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 226
    return-object v1

    .line 224
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v1    # "era":Lorg/threeten/bp/chrono/JapaneseEra;
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Era not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static values()[Lorg/threeten/bp/chrono/JapaneseEra;
    .locals 2

    .prologue
    .line 244
    sget-object v1, Lorg/threeten/bp/chrono/JapaneseEra;->KNOWN_ERAS:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/chrono/JapaneseEra;

    .line 245
    .local v0, "known":[Lorg/threeten/bp/chrono/JapaneseEra;
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/threeten/bp/chrono/JapaneseEra;

    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lorg/threeten/bp/chrono/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/chrono/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method endDate()Lorg/threeten/bp/LocalDate;
    .locals 6

    .prologue
    .line 292
    iget v2, p0, Lorg/threeten/bp/chrono/JapaneseEra;->eraValue:I

    invoke-static {v2}, Lorg/threeten/bp/chrono/JapaneseEra;->ordinal(I)I

    move-result v1

    .line 293
    .local v1, "ordinal":I
    invoke-static {}, Lorg/threeten/bp/chrono/JapaneseEra;->values()[Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object v0

    .line 294
    .local v0, "eras":[Lorg/threeten/bp/chrono/JapaneseEra;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    .line 295
    sget-object v2, Lorg/threeten/bp/LocalDate;->MAX:Lorg/threeten/bp/LocalDate;

    .line 297
    :goto_0
    return-object v2

    :cond_0
    add-int/lit8 v2, v1, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lorg/threeten/bp/chrono/JapaneseEra;->startDate()Lorg/threeten/bp/LocalDate;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/threeten/bp/LocalDate;->minusDays(J)Lorg/threeten/bp/LocalDate;

    move-result-object v2

    goto :goto_0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lorg/threeten/bp/chrono/JapaneseEra;->eraValue:I

    return v0
.end method

.method public range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;
    .locals 2
    .param p1, "field"    # Lorg/threeten/bp/temporal/TemporalField;

    .prologue
    .line 317
    sget-object v0, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    if-ne p1, v0, :cond_0

    .line 318
    sget-object v0, Lorg/threeten/bp/chrono/JapaneseChronology;->INSTANCE:Lorg/threeten/bp/chrono/JapaneseChronology;

    sget-object v1, Lorg/threeten/bp/temporal/ChronoField;->ERA:Lorg/threeten/bp/temporal/ChronoField;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/JapaneseChronology;->range(Lorg/threeten/bp/temporal/ChronoField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/threeten/bp/jdk8/DefaultInterfaceEra;->range(Lorg/threeten/bp/temporal/TemporalField;)Lorg/threeten/bp/temporal/ValueRange;

    move-result-object v0

    goto :goto_0
.end method

.method startDate()Lorg/threeten/bp/LocalDate;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/threeten/bp/chrono/JapaneseEra;->since:Lorg/threeten/bp/LocalDate;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/threeten/bp/chrono/JapaneseEra;->name:Ljava/lang/String;

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0}, Lorg/threeten/bp/chrono/JapaneseEra;->getValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 336
    return-void
.end method
