# Problem 4: ContactAndLeadSearch

## 1. Problem Statement

Create a public Apex class named `ContactAndLeadSearch`.

It contains a static method `searchContactsAndLeads` that:

1. Accepts a String parameter.
2. Searches Contacts and Leads.
3. Searches name fields.
4. Returns `List<List<SObject>>`.

## 2. Apex Solution

**Class Name:** ContactAndLeadSearch

```apex
public with sharing class ContactAndLeadSearch {

    public static List<List<SObject>> searchContactsAndLeads(
        String searchText
    ) {
        List<List<SObject>> result = [
            FIND :searchText IN NAME FIELDS
            RETURNING
                Contact(Id, FirstName, LastName),
                Lead(Id, FirstName, LastName)
        ];

        return result;
    }
}
```

## 3. Anonymous Apex Execution

```apex
List<List<SObject>> searchResult =
    ContactAndLeadSearch.searchContactsAndLeads('Smith');

System.debug('Contacts: ' + searchResult[0]);
System.debug('Leads: ' + searchResult[1]);
```

## 4. Concept Explanation

### What is SOSL?

SOSL stands for Salesforce Object Search Language.

It is used to search text across multiple Salesforce objects.

Example:

```apex
FIND 'Smith' IN NAME FIELDS
RETURNING Contact(Id, FirstName, LastName),
          Lead(Id, FirstName, LastName)
```

### SOQL vs SOSL

| SOQL | SOSL |
|---|---|
| Salesforce Object Query Language | Salesforce Object Search Language |
| Uses SELECT | Uses FIND |
| Searches records of a particular object | Can search across multiple objects |
| Uses FROM and WHERE | Uses IN and RETURNING |

### What is SObject?

SObject is a generic Salesforce data type used to represent Salesforce records.

Examples of specific SObject types:

- Account
- Contact
- Lead
- Opportunity

**Java Comparison:**

Java's Object class is conceptually similar to Salesforce's SObject.

For example:

- Java: Object
- Salesforce: SObject
- Java: ArrayList<Object>
- Salesforce: List<SObject>

### Why List<List<SObject>>?

Our SOSL query searches two objects:

1. Contact
2. Lead

Therefore, the result contains two separate lists.

| Index | Records |
|---|---|
| searchResult[0] | Contact records |
| searchResult[1] | Lead records |

The order depends on the object order specified in the RETURNING clause.

### Important SOSL Keywords

| Keyword | Purpose |
|---|---|
| FIND | Specifies search text |
| IN NAME FIELDS | Searches name-related fields |
| RETURNING | Specifies objects and fields to retrieve |
| :searchText | Binds an Apex variable into the SOSL query |

## 5. Interview Questions and Answers

**Q1. What is SOSL?**

SOSL stands for Salesforce Object Search Language. It is used to search text across multiple Salesforce objects.

**Q2. What is the difference between SOQL and SOSL?**

SOQL retrieves records from specific objects using SELECT, whereas SOSL searches text across multiple objects using FIND.

**Q3. What is SObject in Salesforce?**

SObject is a generic data type used to represent Salesforce records. Account, Contact, Lead and Opportunity are examples of specific SObject types.

**Q4. Why do we use List<List<SObject>> in SOSL?**

Because SOSL can return records from multiple objects. Each object has its own result list, and all those lists are stored inside an outer list.

**Q5. What does searchResult[0] represent?**

It represents the Contact records because Contact is the first object specified in the RETURNING clause.

**Q6. What does searchResult[1] represent?**

It represents the Lead records because Lead is the second object specified in the RETURNING clause.

**Q7. What is the purpose of the bind variable :searchText?**

It passes an Apex variable into the SOSL query.

## 6. Key Learning Outcomes

After completing this problem, I learned:

- SOSL fundamentals.
- Difference between SOQL and SOSL.
- Searching multiple Salesforce objects.
- Using FIND and RETURNING clauses.
- Using bind variables.
- Understanding SObject.
- Understanding List<List<SObject>>.
- Accessing individual search result lists using indexes.

## 7. Practice Status

- [x] Apex class created.
- [x] SOSL query implemented.
- [x] Contact and Lead search configured.
- [x] Anonymous Apex execution prepared.
- [x] Concepts understood.
- [ ] GitHub documentation uploaded.